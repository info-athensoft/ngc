package com.athensoft.ecomm.entity.catalog;

public enum ItemClassLevel {
	ROOT("root"),	LEVEL_1("level1"),	LEVEL_2("level2");
	
	private String levelName;
	
	private ItemClassLevel(String levelName){
		this.levelName = levelName;
	}
}
