import { BrowserModule } from '@angular/platform-browser';
import { NgModule,CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { LoginComponent } from './login/login.component';
//import { PointsComponent } from './points/points.component';
//import { HomeComponent } from './home/home.component';
// import { PlayersComponent } from './players/players.component';
import { ReactiveFormsModule } from '@angular/forms';
import { Service } from './services/service';
import { Interceptor } from './services/interceptor';
import {HttpClientModule,HTTP_INTERCEPTORS} from '@angular/common/http';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { ToastrModule } from 'ngx-toastr';
import { LayoutModule } from './layout/layout.module';
//import { LayoutComponent } from './layout/layout.component';
//import {HeaderComponent} from './header/header.component';
//import {FooterComponent} from './footer/footer.component';
import { HomeComponent } from './home/home.component';
import {RouterModule} from '@angular/router';

import { TeamsComponent } from './teams/teams.component';
import { PlayersComponent } from './players/players.component';
import { PointsComponent } from './points/points.component';
import { MatchesComponent } from './matches/matches.component';
import { MatchDetailsComponent } from './match-details/match-details.component';


@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    HomeComponent,
    TeamsComponent,
    PlayersComponent,
    PointsComponent,
    MatchesComponent,
    MatchDetailsComponent
    
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    ReactiveFormsModule,
    HttpClientModule,
    BrowserAnimationsModule,
    ToastrModule.forRoot(),
   LayoutModule,
   RouterModule    
  ],
  schemas: [ CUSTOM_ELEMENTS_SCHEMA ],

  providers: [Service,
    { provide: HTTP_INTERCEPTORS, useClass: Interceptor, multi: true }],
  bootstrap: [AppComponent]
})
export class AppModule { }
