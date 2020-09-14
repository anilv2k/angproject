import { Component, OnInit } from '@angular/core';
import {Router} from '@angular/router';
@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit  {
  public api_key :any;
  constructor(private router: Router) { }
  
  ngOnInit(): void {
    this.api_key = localStorage.getItem("token");
  }
  logout() {
    localStorage.clear();
    this.router.navigate(['/login']);
  }
}
