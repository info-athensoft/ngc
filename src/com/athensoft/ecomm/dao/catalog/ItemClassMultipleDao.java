package com.athensoft.ecomm.dao.catalog;

import java.util.List;

import com.athensoft.ecomm.entity.catalog.ItemClassMultiple;

public interface ItemClassMultipleDao {
	public void create(ItemClassMultiple x);
	public void delete(ItemClassMultiple x);
	public void update(ItemClassMultiple x);
	
	public List<ItemClassMultiple> findAll();
	public List<ItemClassMultiple> fuzzySearch(String searchString);
	
	public List<ItemClassMultiple> findTreeById(int classId);
	public List<ItemClassMultiple> findByClassStatusId(int classStatusId);	
	public List<ItemClassMultiple> findByNameLike(String name);
	
	public List<ItemClassMultiple> findDirectChildByClassCode(String classCode);
	public List<ItemClassMultiple> findDirectChildByClassId(int classId);
	
	public ItemClassMultiple findById(int id);
	public ItemClassMultiple findByClassCode(String classCode);
	public ItemClassMultiple findByName(String name);
	
	
	
	//
	public List<ItemClassMultiple> findByClassLevel(int classLevel);
	
	
}
