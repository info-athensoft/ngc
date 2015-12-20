package com.athensoft.ecomm.entity.item;

import java.util.ArrayList;
import java.util.List;

import com.athensoft.ecomm.entity.sale.ItemSale;

public class Item {
	private long 	itemId ;
	private String 	itemCode;
	private String 	itemName;
	private String 	itemPicName;
	private String 	itemDesc;
	private int 	itemClassId;		//FK joined table: item_class.ClassID
	private String 	itemClassCode;		//joined table: item_class.ClassCode
	private String	itemClassName;		//joined table: item_class.ClassName
	
	private int 	itemSeqNo;
	private int 	itemStatusId;
	private String 	statusName; 		//joined table: item_status
	
	private String 	imagePathBig;		//not in use
	private String 	imagePathSmall;		//not in use
	
	//item specific properties
	List<ItemSpec> 	itemSpecList = new ArrayList<ItemSpec>();
	
	//item sale info
	private ItemSale itemSale;
	
	
	
	
	
	public ItemSale getItemSale() {
		return itemSale;
	}
	public void setItemSale(ItemSale itemSale) {
		this.itemSale = itemSale;
	}
	public List<ItemSpec> getItemSpecList() {
		return itemSpecList;
	}
	public void setItemSpecList(List<ItemSpec> itemSpecList) {
		this.itemSpecList = itemSpecList;
	}
	public String getItemClassCode() {
		return itemClassCode;
	}
	public void setItemClassCode(String itemClassCode) {
		this.itemClassCode = itemClassCode;
	}
	
	public String getItemClassName() {
		return itemClassName;
	}
	public void setItemClassName(String itemClassName) {
		this.itemClassName = itemClassName;
	}
	public String getStatusName() {
		return statusName;
	}
	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}
	public int getItemStatusId() {
		return itemStatusId;
	}
	public void setItemStatusId(int itemStatusId) {
		this.itemStatusId = itemStatusId;
	}
	public long getItemId() {
		return itemId;
	}
	public void setItemId(long itemId) {
		this.itemId = itemId;
	}
	public String getItemCode() {
		return itemCode;
	}
	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getItemDesc() {
		return itemDesc;
	}
	public void setItemDesc(String itemDesc) {
		this.itemDesc = itemDesc;
	}
	public int getItemSeqNo() {
		return itemSeqNo;
	}
	public void setItemSeqNo(int itemSeqNo) {
		this.itemSeqNo = itemSeqNo;
	}
	public String getImagePathBig() {
		return imagePathBig;
	}
	public void setImagePathBig(String imagePathBig) {
		this.imagePathBig = imagePathBig;
	}
	public String getImagePathSmall() {
		return imagePathSmall;
	}
	public void setImagePathSmall(String imagePathSmall) {
		this.imagePathSmall = imagePathSmall;
	}
	

	public int getItemClassId() {
		return itemClassId;
	}
	public void setItemClassId(int itemClassId) {
		this.itemClassId = itemClassId;
	}
	public String getItemPicName() {
		return itemPicName;
	}
	public void setItemPicName(String itemPicName) {
		this.itemPicName = itemPicName;
	}
	@Override
	public String toString() {
		return "Item [itemId=" + itemId + ", itemCode=" + itemCode + ", itemName=" + itemName + ", itemPicName="
				+ itemPicName + ", itemDesc=" + itemDesc + ", itemClassId=" + itemClassId + ", itemClassCode="
				+ itemClassCode + ", itemClassName=" + itemClassName + ", itemSeqNo=" + itemSeqNo + ", itemStatusId="
				+ itemStatusId + ", statusName=" + statusName + ", imagePathBig=" + imagePathBig + ", imagePathSmall="
				+ imagePathSmall + "]";
	}

	
	
	
	
	
}
