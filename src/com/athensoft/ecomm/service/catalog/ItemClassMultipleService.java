package com.athensoft.ecomm.service.catalog;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.athensoft.ecomm.dao.catalog.ItemClassMultipleDao;
import com.athensoft.ecomm.entity.catalog.ItemClassLevel;
import com.athensoft.ecomm.entity.catalog.ItemClassMultiple;

@Service
public class ItemClassMultipleService {
	/**
	 * 
	 */
	private ItemClassMultipleDao itemClassMultipleDao;
	
	/**
	 * @param ordersDao
	 */
	@Autowired
	@Qualifier("itemClassMultipleDaoParam")
	public void setItemDao(ItemClassMultipleDao itemClassMultipleDao) {
		this.itemClassMultipleDao = itemClassMultipleDao;
	}
	
	//in use
	public ItemClassMultiple findItemClassById(int classId){
		return itemClassMultipleDao.findById(classId);
	}
	
	
	//not in use
	public List<ItemClassMultiple> findByClassLevel(ItemClassLevel classLevel){
		return itemClassMultipleDao.findByClassLevel(classLevel.ordinal());
	}
	
	//not in use
	public List<ItemClassMultiple> findByClassLevel(int classLevel){
		return itemClassMultipleDao.findByClassLevel(classLevel);
	}
	
	//not in use
	public List<ItemClassMultiple> findDirectChildByClassCode(String classCode){
		return itemClassMultipleDao.findDirectChildByClassCode(classCode);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * get items by page with specified classId and pageNumber
	 * @param classId specified page to show
	 * @param pageNumber specified page to show
	 * @return
	 */
	public List<ItemClassMultiple> findAll(){
		return itemClassMultipleDao.findAll();
	}
	
	public List<ItemClassMultiple> findTreeById(int classId){
		return itemClassMultipleDao.findTreeById(classId);
	}
	
	public List<ItemClassMultiple> findByClassStatusId(int classStatusId){
		return itemClassMultipleDao.findByClassStatusId(classStatusId);
	}
	
	public List<ItemClassMultiple> fuzzySearch(String searchString){
		return itemClassMultipleDao.fuzzySearch(searchString);
	}
	
	
	public List<ItemClassMultiple> findDirectChildByClassId(int classId){
		return itemClassMultipleDao.findDirectChildByClassId(classId);
	}
	
	public void createItemClass(ItemClassMultiple x){
		itemClassMultipleDao.create(x);
	}
	
	public void updateItemClass(ItemClassMultiple x){
		itemClassMultipleDao.update(x);
	}
}
