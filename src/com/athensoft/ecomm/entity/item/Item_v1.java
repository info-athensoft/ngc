package com.athensoft.ecomm.entity.item;

public class Item_v1 {
	private long 	itemId ;
	private String 	itemCode;
	private String 	itemName;
	private String 	itemDesc;
//	private String 	itemClassCode;
	private int 	itemClassId;
	private int 	itemSeqNo;

	private String 	itemPicName;
	private String 	imagePathBig;
	private String 	imagePathSmall;
	
	private int 	itemStatusId;	
	private String 	statusName;		//joined table: item_status
	
	
	
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
	public String getItemPicName() {
		return itemPicName;
	}
	public void setItemPicName(String itemPicName) {
		this.itemPicName = itemPicName;
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
	public int getItemStatusId() {
		return itemStatusId;
	}
	public void setItemStatusId(int itemStatusId) {
		this.itemStatusId = itemStatusId;
	}
	public String getStatusName() {
		return statusName;
	}
	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}
	public int getItemClassId() {
		return itemClassId;
	}
	public void setItemClassId(int itemClassId) {
		this.itemClassId = itemClassId;
	}
	@Override
	public String toString() {
		return "Item [itemId=" + itemId + ", itemCode=" + itemCode + ", itemName=" + itemName + ", itemDesc="
				+ itemDesc + ", itemClassId=" + itemClassId + ", itemSeqNo=" + itemSeqNo + ", itemPicName="
				+ itemPicName + ", imagePathBig=" + imagePathBig + ", imagePathSmall=" + imagePathSmall
				+ ", itemStatusId=" + itemStatusId + ", statusName=" + statusName + "]";
	}
}
