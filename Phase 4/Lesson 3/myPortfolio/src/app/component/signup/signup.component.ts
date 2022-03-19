import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrls: ['./signup.component.scss']
})
export class SignupComponent implements OnInit {
register:any = FormGroup;
  constructor(private fb:FormBuilder, private router:Router) { }

  ngOnInit(): void {
    this.register = this.fb.group({
      name:['',Validators.required],
      email:['',Validators.compose([Validators.required,Validators.email])]
    })
  }
  registerSubmit(data:any){
    console.log(data);
  }
  goToLogin(){
    this.router.navigate(['home'])
  }
  goToRegister(){
    this.router.navigate(['register'])
  }
}