import { Component, OnInit } from '@angular/core';
import {Service} from '../services/service';
import { NotificationService } from '../services/notification.service';
import { Router} from '@angular/router';

@Component({
  selector: 'app-layout',
  templateUrl: './layout.component.html',
  styleUrls: ['./layout.component.css']
})
export class LayoutComponent implements OnInit {
    private api_key : any;
    public teamsList: any;
   constructor(private api:Service,private toastr : NotificationService, private router : Router) { 
     console.log('am layout component');
  }

  ngOnInit(): void {
    // this.api_key = localStorage.getItem("token");
    // if(this.api_key){
    //   this.getAllTeams();
    // }else{
    //   this.router.navigate(['/login']);
    // }
  }

  getAllTeams(){
    this.api.getAllTeams().subscribe(res => {
     this.teamsList = res['result'];

    });
  }
  getPlayers(){
    this.router.navigate(['/players']);
  }
}
