import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ItemDisplayComponent } from './emart/item/item-display/item-display.component';
import { ItemListComponent } from './emart/item/item-list/item-list.component';
import { CartListComponent } from './emart/cart/cart-list/cart-list.component';
import { BillViewComponent } from './emart/bill/bill-view/bill-view.component';
import { BillListComponent } from './emart/bill/bill-list/bill-list.component';
import { LoginComponent } from './emart/login/login.component';
import { LogoutComponent } from './emart/logout/logout.component';
import { BuyerSignupComponent } from './emart/buyer-signup/buyer-signup.component';
import { SellerSignupComponent } from './emart/seller-signup/seller-signup.component';
import { SellerItemListComponent } from './emart/seller-item-list/seller-item-list.component';
import { SelleradditemComponent } from './emart/selleradditem/selleradditem.component';

const routes: Routes = [{
  path: 'login',
  component: LoginComponent
},
{
  path: 'log-out',
  component: LogoutComponent
},
{
  path: 'item-display/:iId',
  component: ItemDisplayComponent
},
{
  path: 'item-list',
  component: ItemListComponent
},
{
  path: 'cart-list',
  component: CartListComponent
},
{
  path: 'bill-view',
  component: BillViewComponent
},
{
  path: 'bill-list',
  component: BillListComponent
},
{
  path: 'seller-item-list',
  component: SellerItemListComponent
},
{
  path: 'buyer-signup',
  component: BuyerSignupComponent
},
{
  path: 'seller-additem',
  component: SelleradditemComponent
},


];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
