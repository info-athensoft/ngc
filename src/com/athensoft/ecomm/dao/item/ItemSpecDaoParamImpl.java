package com.athensoft.ecomm.dao.item;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import com.athensoft.ecomm.entity.item.ItemSpec;

@Component("itemSpecDaoParam")
public class ItemSpecDaoParamImpl implements ItemSpecDao{
	
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
	public List<ItemSpec> findItemSpecByItemId(int itemId) {
		String sql = "SELECT a.itemid,a.itemname,b.item_id,b.property_id,b.property_value,c.p_name,c.p_object,p_seqno "
				   + "FROM item a " 
				   + "RIGHT JOIN item_spec b " 
				   + "ON a.itemid = b.item_id "  
				   + "INNER JOIN item_property c " 
				   + "ON c.p_id = b.property_id " 
				   + "WHERE a.itemid = :itemId "
				   + "ORDER BY p_seqno ";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("itemId", itemId);
		return jdbc.query(sql, paramSource, new ItemSpecRowMapper());
	}
	
	private static class ItemSpecRowMapper implements RowMapper<ItemSpec>{
		public ItemSpec mapRow(ResultSet rs, int rowNumber) throws SQLException {
			ItemSpec obj = new ItemSpec();
			obj.setPropertyName(rs.getString("p_name"));
			obj.setPropertyValue(rs.getString("property_value"));
            return obj;
		}		
	}
	
}
