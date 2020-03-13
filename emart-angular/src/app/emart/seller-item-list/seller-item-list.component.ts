import { Component, OnInit } from '@angular/core';
import { EmartService } from '../emart.service';

@Component({
  selector: 'app-seller-item-list',
  templateUrl: './seller-item-list.component.html',
  styleUrls: ['./seller-item-list.component.css']
})
export class SellerItemListComponent implements OnInit {
  sellerallItems: any=[];
  constructor(protected emartService: EmartService) { }

  ngOnInit(): void {
    this.emartService.getSellerItem().subscribe(
      (response: any) => {
        this.sellerallItems = response;
      }
    );
  }
}
