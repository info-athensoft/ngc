package com.athensoft.ecomm.dao.item;

import java.util.List;

import com.athensoft.ecomm.entity.item.Item;

public interface ItemDao {
	
	//search
	public Item findByItemId(long itemId);
	
	public List<Item> findAll();
	public List<Item> findByItemClassId(int itemClassId);
	public List<Item> findByItemFamilyClassId(int itemFamilyClassId);
	
	public List<Item> findByItemClassCode(String itemClassCode);
	
	
	
	//public List<Item> findByItemStatusId(int itemStatusId);
	//public List<Item> findByClassFamily(String classCode);
	
	//update
	//public void update(Item x);
	//public void save(Item x);
	
	//specific to portfolio
	//public List<Item> findAllPhotos();
	//public List<Item> findAllPhotosFuzzy(String fuzzyQueryString);
}
