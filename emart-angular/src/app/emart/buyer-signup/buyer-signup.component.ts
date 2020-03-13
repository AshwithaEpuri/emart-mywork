import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { LoginService } from '../login.service';
import { EmartService } from '../emart.service';

@Component({
  selector: 'app-buyer-signup',
  templateUrl: './buyer-signup.component.html',
  styleUrls: ['./buyer-signup.component.css']
})
export class BuyerSignupComponent implements OnInit {
  buyer: any;
  constructor(protected emartService: EmartService,
    protected loginService: LoginService,
    protected router: Router) {
    this.buyer = {
      id: null,
      username: "",
      password: "",
      email: "",
      mobile: null,
      date: new Date()
    }
  }

  ngOnInit(): void {
  }
  register() {
    this.emartService.register(this.buyer).subscribe(
      (response: any) => {
        this.router.navigate(['/login']);
      }
    );

  }
}
