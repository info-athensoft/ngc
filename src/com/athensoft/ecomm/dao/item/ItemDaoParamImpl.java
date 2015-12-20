package com.athensoft.ecomm.dao.item;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import com.athensoft.ecomm.entity.item.Item;

@Component("itemDaoParam")
public class ItemDaoParamImpl implements ItemDao{

	private static final Logger logger = Logger.getLogger(ItemDaoParamImpl.class);
	
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
	public List<Item> findAll() {		
		String sql = "select ItemId,ItemCode,ItemName,ItemDesc,ItemClassId,ClassCode,ItemSeqNo,ItemPicName,ItemStatusId,StatusName "
				   + "from view_item";
		logger.info(sql);
		return jdbc.query(sql, new ItemRowMapper());
	}
	
	@Override
	public List<Item> findByItemClassId(int itemClassId) {
		String sql = "select ItemId,ItemCode,ItemName,ItemDesc,ItemSeqNo,ItemPicName,ItemClassId,ClassCode,ItemStatusId,StatusName "
	               + "from view_item "
	               + "where ItemClassId = :itemClassId";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("itemClassId", itemClassId);
		logger.info(sql);
		return jdbc.query(sql, paramSource, new ItemRowMapper());
	}
	
	@Override
	public List<Item> findByItemFamilyClassId(int familyClassId) {
		String sql = "select ItemId,ItemCode,ItemName,ItemDesc,ItemSeqNo,ItemPicName,ItemClassId,ClassCode,ItemStatusId,StatusName "
	               + "from view_item "
	               + "where ParentId = :familyClassId";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("familyClassId", familyClassId);
		logger.info(sql);
		return jdbc.query(sql, paramSource, new ItemRowMapper());
	}
	
	@Override
	public List<Item> findByItemClassCode(String itemClassCode) {
		String sql = "select ItemId,ItemCode,ItemName,ItemDesc,ItemSeqNo,ItemPicName,ItemClassId,ClassCode,ItemStatusId,StatusName "
	               + "from view_item "
	               + "where ClassCode = :itemClassCode";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("itemClassCode", itemClassCode);
		logger.info(sql);
		return jdbc.query(sql, paramSource, new ItemRowMapper());
	}
	
	
	public Item findByItemId(long itemId) {
		String sql = "select ItemId,ItemCode,ItemName,ItemDesc,ItemSeqNo,ItemPicName,ItemClassId,ClassCode,ClassName,ItemStatusId,StatusName "
	               + "from view_item "
	               + "where ItemId = :itemId";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("itemId", itemId);
		logger.info(sql);
		return jdbc.queryForObject(sql, paramSource, new ItemRowMapper());
	}
	/*	
	public Item findByClassCode(String classCode) {
		String sql = "";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("classCode", classCode);
		logger.info(sql);
		return jdbc.queryForObject(sql, paramSource, new ItemRowMapper());
	}
	
	public Item findByName(String className) {
		String sql = "select classId,ClassCode,ClassName,ClassDesc,ClassStatusID from item_class where ClassName = :className";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("className", className);
		logger.info(sql);
		return jdbc.queryForObject(sql, paramSource, new ItemRowMapper());
	}
	
	public List<Item> findByNameLike(String className) {
		String sql = "select ClassId,ClassCode,ClassName,ClassDesc,ClassStatusID from item_class where ClassName like :className";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("className", className);
		logger.info(sql);		
		return jdbc.query(sql, new ItemRowMapper());
	}
	
	public List<Item> findByClassStatusId(int classStatusId){
		String sql = "select ClassId,ClassCode,ClassName,ClassDesc,ClassStatusID from item_class where ClassStatusId = :classStatusId";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("classStatusId", classStatusId);
		logger.info(sql);		
		return jdbc.query(sql, new ItemRowMapper());
	}
*/
	
	public void delete(Item x) {
		String sql = "delete from item_class where ClassID = ?";
	}

	
	public void create(Item x) {
		String sql = "INSERT INTO item_class(ClassCode,ParentId,ClassName,ClassDesc,ClassStatusID) VALUES(?,?,?,?,?)";
	}

	
	public void update(Item x) {
		String sql = "UPDATE item_class SET ClassCode = ?,ParentId = ?,ClassName = ?,ClassDesc = ?,"
				   + "ClassStatusID = ? "
				   + "where ClassID = ?";
	}
	
	private static class ItemRowMapper implements RowMapper<Item>{
		public Item mapRow(ResultSet rs, int rowNumber) throws SQLException {
			Item x = new Item();
			x.setItemId(rs.getInt("ItemId"));
			x.setItemCode(rs.getString("ItemCode"));
			x.setItemName(rs.getString("ItemName"));
			x.setItemDesc(rs.getString("ItemDesc"));
			x.setItemClassId(rs.getInt("ItemClassId"));
			x.setItemSeqNo(rs.getInt("ItemSeqNo"));
			x.setItemPicName(rs.getString("itemPicName"));
			x.setItemClassCode(rs.getString("ClassCode"));
			x.setItemClassName(rs.getString("ClassName"));
//			x.setImagePathBig(rs.getString("ImagePathBig"));
//			x.setImagePathSmall(rs.getString("ImagePathSmall"));
			x.setItemStatusId(rs.getInt("itemStatusId"));
			x.setStatusName(rs.getString("statusName"));
            return x;
		}		
	}

}
