import { Component, OnInit } from '@angular/core';
import {Service} from '../services/service';
import {Router} from '@angular/router';
import { LoggedInService } from '../services/behaviorSubjectService';
@Component({
  selector: 'app-points',
  templateUrl: './points.component.html',
  styleUrls: ['./points.component.css']
})
export class PointsComponent implements OnInit {
  public points : Array<any>;
  private api_key :any;
  constructor(private api:Service,private router:Router,private loggedinservice:LoggedInService) {   
  }

  ngOnInit(): void {
    this.loggedinservice.LoggedInStatus.next(true);    

    this.api_key = localStorage.getItem("token");
    if(this.api_key){
      this.getTeamPoints();
    }else{
      this.router.navigate(['/login']);
    }
  }

  getTeamPoints(){
    this.api.getTeamPoints().subscribe(res => {      
      this.points = res['result'];
      console.log(typeof(this.points));
    });
  }
}
