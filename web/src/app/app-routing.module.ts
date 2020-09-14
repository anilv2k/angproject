import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LoginComponent } from './login/login.component';
import { HomeComponent } from './home/home.component';

import { PlayersComponent } from './players/players.component';
import { PointsComponent } from './points/points.component';
import { MatchesComponent } from './matches/matches.component';
import { TeamsComponent } from './teams/teams.component';
import { MatchDetailsComponent } from './match-details/match-details.component';
import{NoPageFoundComponent} from './no-page-found/no-page-found.component';

import {BrowserModule} from '@angular/platform-browser';

const routes: Routes = [
  {path: '', component: LoginComponent},
  {path: 'login', component: LoginComponent},
  {path: 'teams', component: TeamsComponent},
  {path: 'home', component: TeamsComponent},
  {path: 'team-players/:id', component: PlayersComponent},
  {path: 'points', component: PointsComponent},
  {path: 'matches', component: MatchesComponent},
  {path: 'match-teams/:id', component: MatchDetailsComponent},
  {path: 'dashboard', component: TeamsComponent},
  
  { path: '**', component: NoPageFoundComponent }
  
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
