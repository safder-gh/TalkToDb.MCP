
import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { QueryResult } from '../interfaces/query-result';

@Injectable({
  providedIn: 'root'
})
export class QueryService {

  private readonly apiUrl = 'https://localhost:7041/ask?q=';

  constructor(private http: HttpClient) {}

  executeQuery(question: string): Observable<QueryResult> {
    return this.http.get<QueryResult>(
      this.apiUrl+question
    );
  }
}
