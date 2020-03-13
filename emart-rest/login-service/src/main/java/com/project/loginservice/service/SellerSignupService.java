package com.project.loginservice.service;

import com.project.loginservice.pojo.SellerSignupPojo;

public interface SellerSignupService {
	SellerSignupPojo getSellerItem(int SellerId);
	SellerSignupPojo validateSeller(SellerSignupPojo sellerSignupPojo);
	SellerSignupPojo getSellerId(int SellerId);
}
