import { Component, OnInit } from '@angular/core';
import { EmartService } from '../../emart.service';
import { BillDetails } from '../../bill-details';
import { Bill } from '../../bill';
import { Router } from '@angular/router';

@Component({
  selector: 'app-bill-view',
  templateUrl: './bill-view.component.html',
  styleUrls: ['./bill-view.component.css']
})
export class BillViewComponent implements OnInit {
  cartItems: any;
  buyerName: string = '';
  buyerId: string = '';
  todayDate: Date = new Date;
  amount: number = 0;
  allBills: Bill[];
  allBillDetails: BillDetails[];
  currentBuyer: any;

  constructor(protected emartService: EmartService,
    protected router: Router) { }

  ngOnInit(): void {
    this.currentBuyer = this.emartService.currentBuyer;
    this.cartItems = this.emartService.getAllCart();
    let size = this.cartItems.length;
    for (let i = 0; i < size; i++) {
      this.amount = this.amount + this.cartItems[i].price
    }
  }

  /// Added bill to database and navigate to item list ///
  addBill() {
    this.emartService
      .addBill(this.todayDate, this.amount)
      .subscribe(
        (res) => {
          this.emartService
            .getBuyer()
            .subscribe(
              (response) => {
                this.currentBuyer = response;
                this.emartService.setBuyerAndBills(this.currentBuyer)
              }
            )
        }
      )
    this.router.navigate(['item-list']);
  }

}
