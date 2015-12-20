package com.athensoft.ecomm.dao.sale;

import java.util.List;

import com.athensoft.ecomm.entity.item.Item;
import com.athensoft.ecomm.entity.sale.ItemSale;

public interface ItemSaleDao {
	public ItemSale getItemSaleByItemId(int itemId);
	public List<Item> findByItemClassId(int itemClassId);
	public List<Item> findByFamilyClassId(int familyClassId);
	public List<Item> findItemFuzzy(String queryString);
}
