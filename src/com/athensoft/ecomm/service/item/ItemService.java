package com.athensoft.ecomm.service.item;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.athensoft.ecomm.dao.item.ItemDao;
import com.athensoft.ecomm.dao.item.ItemSpecDao;
import com.athensoft.ecomm.dao.sale.ItemSaleDao;
import com.athensoft.ecomm.entity.item.Item;
import com.athensoft.ecomm.entity.item.ItemSpec;
import com.athensoft.ecomm.entity.sale.ItemSale;

@Service
public class ItemService {
	private ItemDao itemDao;	
	private ItemSpecDao itemSpecDao;
	private ItemSaleDao itemSaleDao;
	
	/**
	 * @param ordersDao
	 */
	@Autowired
	@Qualifier("itemDaoParam")
	public void setItemDao(ItemDao itemDao) {
		this.itemDao = itemDao;
	}
	
	@Autowired
	@Qualifier("itemSpecDaoParam")
	public void setItemSpecDao(ItemSpecDao itemSpecDao) {
		this.itemSpecDao = itemSpecDao;
	}
	
	@Autowired
	@Qualifier("itemSaleDaoParam")
	public void setItemSaleDao(ItemSaleDao itemSaleDao) {
		this.itemSaleDao = itemSaleDao;
	}
	
	/**
	 * get items by page with specified classId and pageNumber
	 * @param classId specified page to show
	 * @param pageNumber specified page to show
	 * @return
	 */
	public List<Item> findAll(){
		return itemDao.findAll();
	}
	
	public List<Item> findByClassCode(String itemClassCode){
		return itemDao.findByItemClassCode(itemClassCode);
	}
		
	public List<Item> findByFamilyClassId(int familyClassId){
		return itemDao.findByItemFamilyClassId(familyClassId);
	}
	
	
	public Item findByItemId(long itemId){
		return itemDao.findByItemId(itemId);
	}
	
	//in use
	public Item getItemById(int itemId){
		Item item = itemDao.findByItemId(itemId);
		
		List<ItemSpec> list = itemSpecDao.findItemSpecByItemId(itemId);
		item.setItemSpecList(list);
		
		ItemSale itemSale = itemSaleDao.getItemSaleByItemId(itemId);
		item.setItemSale(itemSale);
		
		//test
		System.out.println("itemService.java");
		System.out.println(item);
		System.out.println(item.getItemSale());
		return item;
	}
	

	
}
