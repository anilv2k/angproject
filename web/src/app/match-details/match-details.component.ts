import { Component, OnInit } from '@angular/core';
import {Service} from '../services/service';
import { Router,ActivatedRoute} from '@angular/router';
import { LoggedInService } from '../services/behaviorSubjectService';

@Component({
  selector: 'app-match-details',
  templateUrl: './match-details.component.html',
  styleUrls: ['./match-details.component.css']
})
export class MatchDetailsComponent implements OnInit {
  private api_key : any;
  public matchId :any;
  public matchesDetails:any;
  public teamA : any;
  public teamB : any;
  public matchDate: any;
  constructor(private api:Service, private router : Router,private actRoute: ActivatedRoute,private loggedinservice:LoggedInService) {  }

  ngOnInit(): void {
    this.loggedinservice.LoggedInStatus.next(true);    

    this.matchId = this.actRoute.snapshot.params.id;
    this.api_key = localStorage.getItem("token");
    if(this.api_key){
      this.getAllPlayersList(this.matchId);
    }else{
      this.router.navigate(['/login']);
    }
  }
  getAllPlayersList(matchId){
    this.api.getAllPlayersList(matchId).subscribe(res => {
      this.matchDate = res['result']['date'];
      this.matchesDetails = res['result']; 
      this.teamA = res['result']['teamA'];
      this.teamB = res['result']['teamB'];
      console.log(this.matchesDetails);
      console.log(this.teamA);
      console.log(this.teamB);
     });

  }

}
