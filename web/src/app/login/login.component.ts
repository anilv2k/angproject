import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import {Service} from '../services/service';
import { Router} from '@angular/router';
import {LoggedInService} from '../services/behaviorSubjectService';
import { NotificationService } from '../services/notification.service';

// import { Injectable } from '@angular/core';

// @Injectable({
//   providedIn: 'root'
// })

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  loginForm: FormGroup;
  private token: any;
  private res_error: any;
  
  constructor( private formBuilder: FormBuilder, private api: Service, private router:Router,private toastr:NotificationService,private loggedinservice:LoggedInService ) {
    
   }

  ngOnInit(): void {
    this.loggedinservice.LoggedInStatus.next(false);
    if(localStorage.getItem('token')){
      this.router.navigate(['/dashboard']);
    }
    this.loginForm = this.formBuilder.group({
      username: [null,[Validators.required, Validators.email]],
      password: [null, Validators.required]
  });

  }
  formControls() { return this.loginForm.controls; }

  onSubmit(value){
    //console.log("success",value);
    this.api.login(value).subscribe(res => {
     // console.log(res);
     if(res['status'] == "fail"){
        this.res_error = res['message'];       
        this.toastr.showError(this.res_error, "Error:");
     }else{
      this.token = res['api_key'];
      localStorage.setItem("token",this.token);    
      //this.getAllTeams();      
      this.router.navigate(['/dashboard']);
      this.toastr.showSuccess("Login Successfully !", "Success:");
     }
      
    });
  }


}
