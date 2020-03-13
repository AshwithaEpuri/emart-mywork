import { Component, OnInit } from '@angular/core';
import { EmartService } from '../emart.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-selleradditem',
  templateUrl: './selleradditem.component.html',
  styleUrls: ['./selleradditem.component.css']
})
export class SelleradditemComponent implements OnInit {
  selleritem:any;
  constructor(protected emartService: EmartService,protected router: Router) {
    this.selleritem={
      itemid:null,
      itemname:"",
      itemimage:"",
      itemprice:"",
      itemstock:null,
      itemdescription:"",
      subcategoryid:null,
      itemremarks:"",
      sellerid:""

    }
   }

  ngOnInit(): void {
  }
  addItem(){
    this.emartService.addItem(this.selleritem).subscribe(
      (response: any)=>{
        this.router.navigate(['/seller-item-list']);
      }
    );

}
}
