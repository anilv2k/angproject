import { Component, OnInit } from '@angular/core';
import {Service} from '../services/service';
import { Router} from '@angular/router';
import { LoggedInService } from '../services/behaviorSubjectService';

@Component({
  selector: 'app-teams',
  templateUrl: './teams.component.html',
  styleUrls: ['./teams.component.css']
})
export class TeamsComponent implements OnInit {
  private api_key : any;
  public teamsList: any;
  constructor(private api :Service , private router: Router,private loggedinservice:LoggedInService) { }

  ngOnInit(): void {
    this.loggedinservice.LoggedInStatus.next(true);    

    this.api_key = localStorage.getItem("token");
    if(this.api_key){
      this.getAllTeams();
    }else{
      this.router.navigate(['/login']);
    }
  }
  getAllTeams(){
    this.api.getAllTeams().subscribe(res => {
     this.teamsList = res['result'];

    });
  }
  callFunction(event, playerId){
    this.api.getAllplayers(playerId).subscribe(res => {
      this.teamsList = res['result'];
 
     });

  }

}
