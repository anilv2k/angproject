import { Injectable } from '@angular/core';
import { Observable, Subject, BehaviorSubject } from 'rxjs';

@Injectable({ providedIn: 'root' })
export class LoggedInService {

    public LoggedInStatus: BehaviorSubject<any> = new BehaviorSubject<any>(null); 

}