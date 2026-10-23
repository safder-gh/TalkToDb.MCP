using Microsoft.Extensions.AI;
using ModelContextProtocol.Client;
using OpenAI.Responses;
using System.ClientModel;
using TalkToDb.Api;

var builder = WebApplication.CreateBuilder(args);
builder.Services.AddCors(options =>
{
    options.AddPolicy("AngularApp", policy =>
    {
        policy
            .WithOrigins("http://localhost:4200")
            .AllowAnyHeader()
            .AllowAnyMethod();
    });
});
builder.Services.AddOpenApi();
var apiKey = builder.Configuration["OpenApi:ApiKey"];
var apiUrl = builder.Configuration["OpenApi:ApiUrl"];
var modelName = builder.Configuration["OpenApi:ModelName"];

var apiKeyCredential = new ApiKeyCredential(apiKey!);
#pragma warning disable OPENAI001
var baseChatClient = new ResponsesClient(
    credential: new ApiKeyCredential(apiKey!),
    options: new ResponsesClientOptions
        {
        Endpoint = new Uri(apiUrl!)
        }).AsIChatClient(modelName);
IChatClient chatClient = new ChatClientBuilder(baseChatClient).UseFunctionInvocation().Build();
builder.Services.AddSingleton<IChatClient>(chatClient);

var app = builder.Build();

var clientOptions = new StdioClientTransportOptions
{
    Name = "TalkToDb MCP Server",
    Command = "dotnet",
    Arguments = ["run", "--project", "../TalkToDb.MCPServer/TalkToDb.MCPServer.csproj"]
    };
var clientTransport = new StdioClientTransport(clientOptions);
await using var mcpClient = await McpClient.CreateAsync(clientTransport);
//var tools = await mcpClient.ListToolsAsync();
//var results = await mcpClient.CallToolAsync("list-db-tables-schema");

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
    {
    app.MapOpenApi();
    }
app.UseCors("AngularApp");
app.UseHttpsRedirection();
app.MapAppEndpoints(mcpClient);
app.Run();
