package com.athensoft.ecomm.dao.item;

import java.util.List;

import com.athensoft.ecomm.entity.item.ItemSpec;

public interface ItemSpecDao {
	public List<ItemSpec> findItemSpecByItemId(int itemId);
}
