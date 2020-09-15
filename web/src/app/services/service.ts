import {HttpClient} from '@angular/common/http';

import { Injectable } from '@angular/core';
@Injectable({ providedIn: 'root' })

export class Service {
    private api_url = "http://localhost/api/public/api/";
    constructor(private http: HttpClient) { }

    login(value){
        return this.http.get(this.api_url+'login?email='+value.username+'&password='+value.password);
    }
    getAllTeams() {
         return this.http.get(this.api_url+'cricket_teams');
     }
    getTeamPoints() {
        return this.http.get(this.api_url+'team_points');
    }
    getAllplayers(playerId){
        return this.http.get(this.api_url+'cricket_teams/'+playerId);
    }
    getAllmatches(){
        return this.http.get(this.api_url+'cricket_matches');
    }
    getAllPlayersList(matchId){
        return this.http.get(this.api_url+'match_details/'+matchId);
    }
    // register(user: User) {
    //     return this.http.post(`${config.apiUrl}/users/register`, user);
    // }

   
}