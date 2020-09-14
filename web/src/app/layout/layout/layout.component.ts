import { Component, OnInit } from '@angular/core';
import {Service} from '../../services/service';
import {LoggedInService} from '../../services/behaviorSubjectService';
import { NotificationService } from '../../services/notification.service';
import { Router} from '@angular/router';

@Component({
  selector: 'app-layout',
  templateUrl: './layout.component.html',
  styleUrls: ['./layout.component.css']
})
export class LayoutComponent implements OnInit {
    private api_key : any;
    public teamsList: any;
    public isLoggedIn : boolean = true;
   constructor(private api:Service,private toastr : NotificationService, private router : Router, private logedinservice:LoggedInService) { 
     console.log('am layout component');
  }

  ngOnInit(): void {   
    this.logedinservice.LoggedInStatus.subscribe((data)=> {
      this.isLoggedIn = data;
    })
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
