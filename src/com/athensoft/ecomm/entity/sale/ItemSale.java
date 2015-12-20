package com.athensoft.ecomm.entity.sale;

import com.athensoft.ecomm.entity.item.Item;

public class ItemSale extends Item{
	private long itemId;
	
	//sale price
	private double previousPrice;
	private double currentPrice;
	private double salePriceDesc;
	
	//sale status
	private int itemSaleStatus;
	
	

	public long getItemId() {
		return itemId;
	}

	public void setItemId(long itemId) {
		this.itemId = itemId;
	}

	public double getPreviousPrice() {
		return previousPrice;
	}

	public void setPreviousPrice(double previousPrice) {
		this.previousPrice = previousPrice;
	}

	public double getCurrentPrice() {
		return currentPrice;
	}

	public void setCurrentPrice(double currentPrice) {
		this.currentPrice = currentPrice;
	}

	public int getItemSaleStatus() {
		return itemSaleStatus;
	}

	public void setItemSaleStatus(int itemSaleStatus) {
		this.itemSaleStatus = itemSaleStatus;
	}

	@Override
	public String toString() {
		return "ItemSale [itemId=" + itemId + ", previousPrice=" + previousPrice + ", currentPrice=" + currentPrice
				+ ", itemSaleStatus=" + itemSaleStatus + "]";
	}

	public double getSalePriceDesc() {
		return salePriceDesc;
	}

	public void setSalePriceDesc(double salePriceDesc) {
		this.salePriceDesc = salePriceDesc;
	}
}
