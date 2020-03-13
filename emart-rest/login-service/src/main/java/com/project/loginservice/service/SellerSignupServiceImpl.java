package com.project.loginservice.service;

import java.util.HashSet;
import java.util.Set;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.loginservice.dao.SellerSignupDao;
import com.project.loginservice.entity.CategoryEntity;
import com.project.loginservice.entity.ItemEntity;
import com.project.loginservice.entity.SellerSignupEntity;
import com.project.loginservice.entity.SubCategoryEntity;
import com.project.loginservice.pojo.CategoryPojo;
import com.project.loginservice.pojo.ItemPojo;
import com.project.loginservice.pojo.SellerSignupPojo;
import com.project.loginservice.pojo.SubCategoryPojo;
import com.project.loginservice.service.SellerSignupService;

@Service
public class SellerSignupServiceImpl implements SellerSignupService{
	static Logger LOG = Logger.getLogger(BuyerSignupService.class.getClass());
	@Autowired
	SellerSignupDao sellerSignupDao;
	@Override
	public SellerSignupPojo getSellerItem(int SellerId) {
		return null;
	}
	@Override
	public SellerSignupPojo validateSeller(SellerSignupPojo sellerSignupPojo) {
		LOG.info("Entered  ValidSeller() ");
		SellerSignupEntity sellerSignupEntity= sellerSignupDao.findByUsernameAndPassword(sellerSignupPojo.getUsername(),sellerSignupPojo.getPassword());	
		if(sellerSignupEntity!=null) {			
			Set<ItemEntity> allItemsEntity = sellerSignupEntity.getAllItems();
			Set<ItemPojo> allItems= new HashSet<ItemPojo>();
			for(ItemEntity itemEntity : allItemsEntity) {								
				SubCategoryEntity subCategoryEntity = itemEntity.getSubCategoryId();
				CategoryEntity categoryEntity = subCategoryEntity.getCategoryId();
				CategoryPojo categoryPojo = new CategoryPojo(categoryEntity.getId(), categoryEntity.getName(),
						categoryEntity.getBrief());
				SubCategoryPojo subCategoryPojo = new SubCategoryPojo(subCategoryEntity.getId(),
						subCategoryEntity.getName(), categoryPojo, subCategoryEntity.getBrief(),
						subCategoryEntity.getGstPercent());
			ItemPojo itemPojo = new ItemPojo(itemEntity.getId(), itemEntity.getName(), subCategoryPojo,
						itemEntity.getPrice(), itemEntity.getDescription(), itemEntity.getStock(),
						itemEntity.getRemarks(), itemEntity.getImage(), null);				
				allItems.add(itemPojo);
			}
			sellerSignupPojo = new SellerSignupPojo(sellerSignupEntity.getId(),
					sellerSignupEntity.getUsername(), sellerSignupEntity.getPassword(),
					sellerSignupEntity.getCompany(), sellerSignupEntity.getGst(),sellerSignupEntity.getBrief(), 
					sellerSignupEntity.getAddress(), sellerSignupEntity.getEmail(),
					sellerSignupEntity.getWebsite(), sellerSignupEntity.getContact(),allItems);
			
		}		
		LOG.info("Exited  ValidSeller() ");
		return sellerSignupPojo;		
	}
	@Override
	public SellerSignupPojo getSellerId(int SellerId) {
		LOG.info("Enterd  getSellerId() ");
		SellerSignupPojo sellersignupPojo=null;
		SellerSignupEntity sellerSignupEntity = sellerSignupDao.findById(SellerId).get();		
		if(sellerSignupEntity!=null) {			
			Set<ItemEntity> allItemsEntity = sellerSignupEntity.getAllItems();
			Set<ItemPojo> allItems= new HashSet<ItemPojo>();
			for(ItemEntity itemEntity : allItemsEntity) {				
				SubCategoryEntity subCategoryEntity = itemEntity.getSubCategoryId();
				CategoryEntity categoryEntity = subCategoryEntity.getCategoryId();
				CategoryPojo categoryPojo = new CategoryPojo(categoryEntity.getId(), categoryEntity.getName(),
						categoryEntity.getBrief());
				SubCategoryPojo subCategoryPojo = new SubCategoryPojo(subCategoryEntity.getId(),
						subCategoryEntity.getName(), categoryPojo, subCategoryEntity.getBrief(),
						subCategoryEntity.getGstPercent());
			ItemPojo itemPojo = new ItemPojo(itemEntity.getId(), itemEntity.getName(), subCategoryPojo,
						itemEntity.getPrice(), itemEntity.getDescription(), itemEntity.getStock(),
						itemEntity.getRemarks(), itemEntity.getImage(), null);				
				allItems.add(itemPojo);
			}
			sellersignupPojo = new SellerSignupPojo(sellerSignupEntity.getId(),
					sellerSignupEntity.getUsername(), sellerSignupEntity.getPassword(),
					sellerSignupEntity.getCompany(), sellerSignupEntity.getGst(),sellerSignupEntity.getBrief(), 
					sellerSignupEntity.getAddress(), sellerSignupEntity.getEmail(),
					sellerSignupEntity.getWebsite(), sellerSignupEntity.getContact(),allItems);		
		}
		LOG.info("Exited  getSellerId() ");
		return sellersignupPojo;
	}
}
