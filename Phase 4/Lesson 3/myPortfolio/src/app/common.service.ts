import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import {environment} from "../environments/environment";

@Injectable({
  providedIn: 'root'
})
export class CommonService {
  baseURL:any = environment.baseUrl;
  constructor(private http:HttpClient) { }

  getUsers(){
    return this.http.get(this.baseURL);
  }

}