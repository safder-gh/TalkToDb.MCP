
import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { QueryService } from '../../services/query-service';
import {
  QueryResult,
  QueryResultType
} from '../../interfaces/query-result';

interface ChatMessage {
  role: 'user' | 'assistant';
  content: string;
  queryResult?: QueryResult;
}

@Component({
  selector: 'app-ask',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './ask.html',
  styleUrl: './ask.css'
})
export class Ask {

  constructor(private queryService: QueryService) {}

  prompt = '';
  loading = false;

  messages: ChatMessage[] = [];

  ask(): void {
    const question = this.prompt.trim();

    if (!question || this.loading) {
      return;
    }

    // Add the user's message
    this.messages.push({
      role: 'user',
      content: question
    });

    this.prompt = '';
    this.loading = true;

    // Call the REST API
    this.queryService.executeQuery(question).subscribe({

      next: (response: QueryResult) => {
        this.messages.push({
          role: 'assistant',
          content: this.getDisplayMessage(response),
          queryResult: response
        });

        this.loading = false;
      },

      error: (error) => {
        console.error('Query API error:', error);

        this.messages.push({
          role: 'assistant',
          content: 'Unable to process your request.'
        });

        this.loading = false;
      }
    });
  }

  getDisplayMessage(response: QueryResult): string {

    if (!response.isSuccess) {
      return response.errorMessage
        || response.message
        || 'Something went wrong.';
    }

    switch (response.resultType) {

      case QueryResultType.Scalar:
        return this.formatValue(response.result);

      case QueryResultType.List:
        return response.message || 'Here are the results.';

      case QueryResultType.Grid:
        return response.message || 'Here is the result grid.';

      case QueryResultType.None:
      default:
        return response.message || 'No result available.';
    }
  }

  
getColumns(data: unknown): string[] {
  if (
    data !== null &&
    typeof data === 'object' &&
    'columns' in data &&
    Array.isArray(data.columns)
  ) {
    return data.columns.filter(
      (column): column is string => typeof column === 'string'
    );
  }

  // Optional fallback for a plain array of objects
  if (Array.isArray(data) && data.length > 0) {
    const firstRow: unknown = data[0];

    if (
      firstRow !== null &&
      typeof firstRow === 'object' &&
      !Array.isArray(firstRow)
    ) {
      return Object.keys(firstRow);
    }
  }

  return [];
}

getRows(data: unknown): unknown[] {
  if (Array.isArray(data)) {
    return data;
  }

  if (
    data !== null &&
    typeof data === 'object' &&
    'rows' in data &&
    Array.isArray(data.rows)
  ) {
    return data.rows;
  }

  return [];
}

getCellValue(row: unknown, column: string): string {
  if (
    row !== null &&
    typeof row === 'object' &&
    Object.prototype.hasOwnProperty.call(row, column)
  ) {
    return this.formatValue(
      (row as Record<string, unknown>)[column]
    );
  }

  return '';
}


  formatValue(value: unknown): string {

    if (value === null || value === undefined) {
      return '';
    }

    if (typeof value === 'object') {
      return JSON.stringify(value) ?? '';
    }

    return String(value);
  }

  
  onEnter(event: Event): void {

    if (!(event instanceof KeyboardEvent)) {
      return;
    }

    // Shift + Enter inserts a newline
    if (event.shiftKey) {
      return;
    }

    event.preventDefault();
    this.ask();
  }
}
