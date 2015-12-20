package com.athensoft.ecomm.service.sale;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.athensoft.ecomm.dao.sale.ItemSaleFeaturedDao;
import com.athensoft.ecomm.entity.sale.ItemSaleFeatured;

@Service
public class ItemSaleFeaturedService {
	private ItemSaleFeaturedDao itemSaleFeaturedDao;

	@Autowired
	public void setItemSaleFeaturedDao(ItemSaleFeaturedDao itemSaleFeaturedDao) {
		this.itemSaleFeaturedDao = itemSaleFeaturedDao;
	}
	
	public List<ItemSaleFeatured> getFeaturedItem(){
		return itemSaleFeaturedDao.getFeaturedItem();
	}
	
}
