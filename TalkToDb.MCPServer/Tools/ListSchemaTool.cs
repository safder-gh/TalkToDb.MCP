using ModelContextProtocol.Server;
using System.ComponentModel;

namespace TalkToDb.MCPServer.Tools
    {
    [McpServerToolType]
    public static class ListSchemaTool
        {
        [McpServerTool(Name ="list-db-tables-schema")]
        [Description("List the schema of all tables in the database.")]
        public static async Task ListDbTableSchema()
            {

            }
        }
    }
