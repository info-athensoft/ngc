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

import com.athensoft.ecomm.entity.sale.ItemSaleFeatured;

@Component("itemSaleFeaturedDaoParam")
public class ItemSaleFeaturedDaoParamImpl implements ItemSaleFeaturedDao{
	
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
	public List<ItemSaleFeatured> getFeaturedItem() {
		String sql = "SELECT itemId,ItemCode,ItemName,ItemPicName,ItemClassId,sale_price_current,sale_price_previous,rank "
				   + "FROM view_sale_featured ";
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		return jdbc.query(sql, paramSource, new ItemSaleFeaturedRowMapper());
	}
	
	private static class ItemSaleFeaturedRowMapper implements RowMapper<ItemSaleFeatured>{
		public ItemSaleFeatured mapRow(ResultSet rs, int rowNumber) throws SQLException {
			ItemSaleFeatured x = new ItemSaleFeatured();
			//Item
			x.setItemId(rs.getInt("ItemId"));
			x.setItemCode(rs.getString("ItemCode"));
			x.setItemName(rs.getString("ItemName"));
			x.setItemPicName(rs.getString("itemPicName"));
			x.setItemClassId(rs.getInt("ItemClassId"));
			
			//ItemSaleFeatured
			x.setCurrentPrice(rs.getDouble("sale_price_current"));
			x.setPreviousPrice(rs.getDouble("sale_price_previous"));
			x.setRank(rs.getDouble("rank"));
			
            return x;
		}		
	}
	
}
