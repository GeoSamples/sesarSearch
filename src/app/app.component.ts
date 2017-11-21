import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  instruction: String = ' Please enter free text to search the samples.';
  logo: String = 'assets/img/logo/sesar_logo_right.jpg';
}
