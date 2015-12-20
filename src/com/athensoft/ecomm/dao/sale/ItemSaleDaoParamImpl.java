package com.athensoft.ecomm.dao.sale;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import com.athensoft.ecomm.entity.item.Item;
import com.athensoft.ecomm.entity.sale.ItemSale;
import com.athensoft.util.string.KeywordParser;

@Component("itemSaleDaoParam")
public class ItemSaleDaoParamImpl implements ItemSaleDao {
	
	private NamedParameterJdbcTemplate jdbc;

	/**
	 * inject DataSource object
	 * @param dataSource
	 */
	@Autowired
	public void setDataSource(DataSource dataSource){
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}
	
	@Override
	public ItemSale getItemSaleByItemId(int itemId) {
		String sql = "SELECT item_id,sale_price_previous,sale_price_current,sale_price_desc,sale_status "
				   + "FROM item_sale "
				   + "WHERE 1=1 "
				   + "AND item_id = :itemId";
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("itemId", itemId);
		return jdbc.queryForObject(sql, paramSource, new ItemSaleRowMapper());
	}
	
	@Override
	public List<Item> findByItemClassId(int itemClassId) {
		String sql = "select ItemId,ItemCode,ItemName,ItemDesc,ItemSeqNo,ItemPicName,ItemClassId,ClassCode,ItemStatusId,StatusName, sale_price_current, sale_price_previous, sale_status, sale_price_desc "
	               + "from view_item_sale "
	               + "where ItemClassId = :itemClassId";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("itemClassId", itemClassId);
		return jdbc.query(sql, paramSource, new ItemRowMapper());
	}
	
	@Override
	public List<Item> findByFamilyClassId(int familyClassId){
		String sql = "select ItemId,ItemCode,ItemName,ItemDesc,ItemSeqNo,ItemPicName,ItemClassId,ClassCode,ItemStatusId,StatusName,sale_price_current, sale_price_previous, sale_status, sale_price_desc  "
	               + "from view_item_sale "
	               + "where ParentId = :familyClassId";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("familyClassId", familyClassId);
		
		
		List<Item> list = jdbc.query(sql, paramSource, new ItemRowMapper());
		
		//test
		//System.out.println("ItemSaleDaoParamImplt list size ="+list.size());
		return list;
	}

	
	private static class ItemSaleRowMapper implements RowMapper<ItemSale>{
		public ItemSale mapRow(ResultSet rs, int rowNumber) throws SQLException {
			ItemSale x = new ItemSale();
			x.setItemId(rs.getInt("item_id"));
			x.setPreviousPrice(rs.getDouble("sale_price_previous"));
			x.setCurrentPrice(rs.getDouble("sale_price_current"));
			x.setItemSaleStatus(rs.getInt("sale_status"));
            return x;
		}		
	}
	
	private static class ItemRowMapper implements RowMapper<Item>{
		public Item mapRow(ResultSet rs, int rowNumber) throws SQLException {
			Item x = new Item();
			//Item
			x.setItemId(rs.getInt("ItemId"));
			x.setItemCode(rs.getString("ItemCode"));
			x.setItemName(rs.getString("ItemName"));
			x.setItemDesc(rs.getString("ItemDesc"));
			x.setItemClassId(rs.getInt("ItemClassId"));
			x.setItemSeqNo(rs.getInt("ItemSeqNo"));
			x.setItemPicName(rs.getString("itemPicName"));
//			x.setImagePathBig(rs.getString("ImagePathBig"));
//			x.setImagePathSmall(rs.getString("ImagePathSmall"));
			x.setItemStatusId(rs.getInt("itemStatusId"));
			x.setStatusName(rs.getString("statusName"));
			
			//ItemSale
			ItemSale is = new ItemSale();
			is.setCurrentPrice(rs.getDouble("sale_price_current"));
			is.setPreviousPrice(rs.getDouble("sale_price_previous"));
			is.setItemSaleStatus(rs.getInt("sale_status"));
			
			x.setItemSale(is);
            return x;
		}		
	}

	@Override
	public List<Item> findItemFuzzy(String queryString) {
		//step1. get keywords string[]
		String[] keywords = KeywordParser.getKeywordArray(queryString);
		
		
//		String sql = "select ItemId,ItemCode,ItemName,ItemDesc,ItemSeqNo,ItemPicName,ItemClassId,ClassCode,ItemStatusId,StatusName, sale_price_current, sale_price_previous, sale_status, sale_price_desc "
//	               + "from view_item_sale "
//	               + "where ItemName like :itemName";
//		select * from view_item a cross join view_item b on a.itemId = b.itemId where a.itemId < 10 and b.itemId > 5;
//		select* from view_item a cross join view_item b on a.itemId = b.itemId cross join view_item c on b.itemId = c.itemId where a.itemId < 10 and b.itemId > 5 and c.itemId <9;
		
		String sql="";
		 
		
		//get intersect set
		int len = keywords.length;

		String cross_join_string = " ";
		String where_string = " ";
		String table_alias= "";
		
		String paramNamePrefix =":itemName";
		String paramName = "";
		
		for(int i=0; i<len; i++){
			table_alias = "t"+String.valueOf(i);
			paramName = paramNamePrefix+String.valueOf(i);
			
			if(i==0){
				cross_join_string 	= " ";
				where_string 		= "and t0.ItemName like "+paramName+" ";
			}
			if(i>0){
				cross_join_string 	+= "cross join view_item_sale "+table_alias+" "
	               		   			+ "on t0.itemId = "+table_alias+".itemId ";
				where_string 		+= "and "+table_alias+".ItemName like "+paramName+" ";
			}
			
			/*
			  if(i==0){
				cross_join_string 	= " ";
				where_string 		= "and t0.ItemName like "+paramName+" "+"or t0.className like "+paramName+" ";
			}
			if(i>0){
				cross_join_string 	+= "cross join view_item_sale "+table_alias+" "
	               		   			+ "on t0.itemId = "+table_alias+".itemId ";
				where_string 		+= "and "+table_alias+".ItemName like "+paramName+" "+"or t0.className like "+paramName+" ";
			} 
			 */
			
		}
		
		sql = "select t0.* "
		        + "from view_item_sale t0 "
				+ cross_join_string
				+ "where 1=1 "
				+ where_string;

		System.out.println(sql);
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
//		paramSource.addValue("itemName", "%"+queryString+"%");
		
		for(int i=0; i<len; i++){
			paramSource.addValue("itemName"+i, "%"+keywords[i]+"%");
		}
		
		return jdbc.query(sql, paramSource, new ItemRowMapper());
	}
}
