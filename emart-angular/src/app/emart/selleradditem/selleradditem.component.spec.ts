import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SelleradditemComponent } from './selleradditem.component';

describe('SelleradditemComponent', () => {
  let component: SelleradditemComponent;
  let fixture: ComponentFixture<SelleradditemComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SelleradditemComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SelleradditemComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
