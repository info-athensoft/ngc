package com.athensoft.ecomm.service.sale;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.athensoft.ecomm.dao.sale.ItemSaleDao;
import com.athensoft.ecomm.entity.item.Item;

@Service
public class ItemSaleService {
	
	private ItemSaleDao itemSaleDao;

	@Autowired
	@Qualifier("itemSaleDaoParam")
	public void setItemSaleDao(ItemSaleDao itemSaleDao) {
		this.itemSaleDao = itemSaleDao;
	}
	
//	public ItemSale getItemSaleByItemId(int itemId){
//		return itemSaleDao.getItemSaleByItemId(itemId);
//	}
	
	
	//in use
	public List<Item> findByClassId(int itemClassId){
		return itemSaleDao.findByItemClassId(itemClassId);
	}
	
	//in use
	public List<Item> findByFamilyClassId(int familyClassId){
//		System.out.println("ItemSaleService");
//		System.out.println("size = "+itemSaleDao.findByFamilyClassId(familyClassId).size());
		
		return itemSaleDao.findByFamilyClassId(familyClassId);
	}
	
	//in use
	public List<Item> findItemFuzzy(String queryString){
		return itemSaleDao.findItemFuzzy(queryString);
	}
	
	
}
