package com.athensoft.ecomm.entity.sale;

import com.athensoft.ecomm.entity.item.Item;

public class ItemSaleFeatured extends Item{
	//sale_featured
	private int featuredId; 	//f_id
	private double rank;
	
	//item_sale
	private double currentPrice;
	private double previousPrice;
	
	
	public int getFeaturedId() {
		return featuredId;
	}
	public void setFeaturedId(int featuredId) {
		this.featuredId = featuredId;
	}
	public double getRank() {
		return rank;
	}
	public void setRank(double rank) {
		this.rank = rank;
	}
	public double getCurrentPrice() {
		return currentPrice;
	}
	public void setCurrentPrice(double currentPrice) {
		this.currentPrice = currentPrice;
	}
	public double getPreviousPrice() {
		return previousPrice;
	}
	public void setPreviousPrice(double previousPrice) {
		this.previousPrice = previousPrice;
	}
	
	
	
}
