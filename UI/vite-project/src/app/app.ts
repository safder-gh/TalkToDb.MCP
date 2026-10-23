import { Component, signal } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { Ask } from './components/ask/ask';

@Component({
  imports: [RouterOutlet],
  selector: 'app-root',
  styleUrl: './app.css',
  templateUrl: './app.html',
})
export class App {
  protected readonly title = signal('vite-project');
}
