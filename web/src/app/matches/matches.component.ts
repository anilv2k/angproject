import { Component, OnInit } from '@angular/core';
import {Service} from '../services/service';

import { Router} from '@angular/router';
import { LoggedInService } from '../services/behaviorSubjectService';

@Component({
  selector: 'app-matches',
  templateUrl: './matches.component.html',
  styleUrls: ['./matches.component.css']
})
export class MatchesComponent implements OnInit {
    private api_key : any;
    public matchesList: any;
   constructor(private api:Service, private router : Router,private loggedinservice:LoggedInService) { 
  }

  ngOnInit(): void {
    this.loggedinservice.LoggedInStatus.next(true);
    this.api_key = localStorage.getItem("token");
    if(this.api_key){
      this.getAllmatches();
    }else{
      this.router.navigate(['/login']);
    }
  }

  getAllmatches(){
    this.api.getAllmatches().subscribe(res => {
     this.matchesList = res['result'];

    });
  }
}
