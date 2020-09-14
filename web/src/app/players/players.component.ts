import { Component, OnInit,Input } from '@angular/core';
import {Service} from '../services/service';
import { Router,ActivatedRoute} from '@angular/router';
import { LoggedInService } from '../services/behaviorSubjectService';



@Component({
  selector: 'app-players',
  templateUrl: './players.component.html',
  styleUrls: ['./players.component.css']
})
export class PlayersComponent implements OnInit {

public playerId: any;
public playersList: any;
public teamDetails: any;

constructor(private api :Service , private router: Router,private actRoute: ActivatedRoute,private loggedinservice:LoggedInService) {
  this.playerId = this.actRoute.snapshot.params.id;
  this.getAllPlayersList(this.playerId);
 }


  ngOnInit() {
    this.loggedinservice.LoggedInStatus.next(true);    
  }
  getAllPlayersList(playerId){
    this.api.getAllplayers(playerId).subscribe(res => {
      this.playersList = res['result']['playes']; 
      this.teamDetails = res['result']; 
      console.log(this.playersList);
      console.log(this.teamDetails);
     });

  }

}
