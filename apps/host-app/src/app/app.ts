import { Component, HostListener } from '@angular/core';
import { RouterOutlet, Router, RouterModule } from '@angular/router';

@Component({
  selector: 'app-root',
  imports: [RouterOutlet, RouterModule],
  templateUrl: './app.html',
  styleUrl: './app.css'
})
export class App {
  protected title = 'hots-app';

  constructor(private router: Router) {}

  @HostListener('window:childRouteChanged', ['$event'])
  onChildRouteChanged(event: any) {
    this.router.navigate([event.detail.route], event.detail.extras);
  }
}
