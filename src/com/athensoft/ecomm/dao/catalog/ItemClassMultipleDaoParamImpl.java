package com.athensoft.ecomm.dao.catalog;

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

import com.athensoft.ecomm.entity.catalog.ItemClassMultiple;

@Component("itemClassMultipleDaoParam")
public class ItemClassMultipleDaoParamImpl implements ItemClassMultipleDao{

	private static final Logger logger = Logger.getLogger(ItemClassMultipleDaoParamImpl.class);
	
	private NamedParameterJdbcTemplate jdbc;

	/**
	 * inject Datasource object
	 * @param dataSource
	 */
	@Autowired
	public void setDataSource(DataSource dataSource){
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}
	
	
	public List<ItemClassMultiple> findAll() {		
		String sql = "SELECT ClassId,ParentId,ClassCode,ClassName,ClassDesc,ClassLevel,ClassStatusId "
				   + "FROM item_class "
				   + "WHERE ClassCode != 'ROOT' AND ParentId is NOT null "
				   + "ORDER BY ClassCode";
		logger.info(sql);
		return jdbc.query(sql, new ItemClassMultipleRowMapper());
	}
	
	public  List<ItemClassMultiple> findTreeById(int classId){
		String sql = "select ClassId,ParentId,ClassCode,ClassName,ClassDesc,ClassLevel,ClassStatusId "
				   + "from item_class "
				   + "WHERE FIND_IN_SET(ClassId, getChildList(:classId)) "
				   + "AND ClassStatusId !=5 "
				   + "ORDER BY ClassCode";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("classId", classId);
		logger.info(sql);
		return jdbc.query(sql, paramSource, new ItemClassMultipleRowMapper());
	}
	
	public ItemClassMultiple findById(int classId) {
		String sql = "SELECT ClassId,ParentId,ClassCode,ClassName,ClassDesc,ClassLevel,ClassStatusId "
				   + "FROM item_class "
				   + "WHERE 1=1 "
				   + "AND ClassId = :classId";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("classId", classId);
		logger.info(sql);
		return jdbc.queryForObject(sql, paramSource, new ItemClassMultipleRowMapper());
	}
	
	public ItemClassMultiple findByClassCode(String classCode) {
		String sql = "SELECT ClassId,ParentId,ClassCode,ClassName,ClassDesc,ClassLevel,ClassStatusId "
	               + "FROM item_class "
				   + "WHERE 1=1 "
	               + "AND classCode = :classCode "
				   + "AND ClassStatusId != 5 ";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("classCode", classCode);
		logger.info(sql);
		return jdbc.queryForObject(sql, paramSource, new ItemClassMultipleRowMapper());
	}
	
	public ItemClassMultiple findByName(String className) {
		String sql = "select classId,ParentId,ClassCode,ClassName,ClassDesc,ClassLevel,ClassStatusID "
	               + "from item_class "
				   + "where ClassName = :className";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("className", className);
		logger.info(sql);
		return jdbc.queryForObject(sql, paramSource, new ItemClassMultipleRowMapper());
	}
	
	public List<ItemClassMultiple> findByNameLike(String className) {
		String sql = "select ClassId,ParentId,ClassCode,ClassName,ClassDesc,ClassLevel,ClassStatusID from item_class where ClassName like :className";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("className", className);
		logger.info(sql);		
		return jdbc.query(sql, paramSource, new ItemClassMultipleRowMapper());
	}
	
	public List<ItemClassMultiple> findByClassStatusId(int classStatusId){
		String sql = "SELECT ClassId,ParentId,ClassCode,ClassName,ClassDesc,ClassLevel,ClassStatusID "
				   + "FROM item_class "
				   + "WHERE 1=1 "
				   + "AND ClassStatusId = :classStatusId "
				   + "AND ParentId is NOT null "
				   + "AND ParentId != 0 "
				   + "ORDER BY ClassCode ";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("classStatusId", classStatusId);
		logger.info(sql);
//		System.out.println("classStatusId="+classStatusId);
		return jdbc.query(sql, paramSource, new ItemClassMultipleRowMapper());
	}
	
	//in use
	@Override
	public List<ItemClassMultiple> findDirectChildByClassCode(String classCode) {
		String sql = "SELECT * FROM item_class WHERE parentid = (select a.classid from item_class a where a.classcode = :classCode)";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("classCode", classCode);
		logger.info(sql);
		return jdbc.query(sql, paramSource, new ItemClassMultipleRowMapper());
	}


	@Override
	public List<ItemClassMultiple> findDirectChildByClassId(int parentClassId) {
		String sql = "select * from item_class where parentid = :parentClassId ";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("parentClassId", parentClassId);
		logger.info(sql);		
		return jdbc.query(sql, paramSource, new ItemClassMultipleRowMapper());
	}
	
	
	public List<ItemClassMultiple> fuzzySearch(String searchString) {
		String sql = "select ClassId,ParentId,ClassCode,ClassName,ClassDesc,ClassLevel,ClassStatusID from item_class where ClassName like :className or ClassCode like :classCode and ParentId is NOT null";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("className", "%"+searchString.trim()+"%");
		paramSource.addValue("classCode", "%"+searchString.trim()+"%");
		logger.info(sql);		
		return jdbc.query(sql, paramSource, new ItemClassMultipleRowMapper());
	}
	
	

	public void delete(ItemClassMultiple x) {
		String sql = "delete from item_class where ClassID = ?";
		System.out.println(sql);
	}

	
	public void create(ItemClassMultiple x) {
		String sql = "INSERT INTO item_class(ParentId,ClassCode,ClassName,ClassDesc,ClassLevel,ClassStatusId) VALUES(:parentId,:classCode,:className,:classDesc,:classLevel,:classStatusId)";
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("parentId", x.getParentId());
		paramSource.addValue("classCode", x.getClassCode());
		paramSource.addValue("className", x.getClassName());
		paramSource.addValue("classDesc", x.getClassDesc());
		paramSource.addValue("classLevel", x.getClassLevel());
		paramSource.addValue("classStatusId", x.getClassStatusId());
		logger.info(sql);
		jdbc.update(sql, paramSource);
	}

	
	public void update(ItemClassMultiple x) {
		String sql = "UPDATE item_class SET "
				   + "ParentId = :parentId, "
				   + "ClassCode = :classCode,"
				   + "ClassName = :className,"
				   + "ClassLevel = :classLevel,"
				   + "ClassDesc = :classDesc,"
				   + "ClassStatusID = :classStatusId "
				   + "WHERE ClassID = :classId";
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();		
		paramSource.addValue("classId", x.getClassId());
		paramSource.addValue("parentId", x.getParentId());
		paramSource.addValue("classCode", x.getClassCode());
		paramSource.addValue("className", x.getClassName());
		paramSource.addValue("classLevel", x.getClassLevel());
		paramSource.addValue("classDesc", x.getClassDesc());
		paramSource.addValue("classStatusId", x.getClassStatusId());
		
		logger.info(sql);
		jdbc.update(sql, paramSource);
		
	}

	
	private static class ItemClassMultipleRowMapper implements RowMapper<ItemClassMultiple>{
		public ItemClassMultiple mapRow(ResultSet rs, int rowNumber) throws SQLException {
			ItemClassMultiple obj = new ItemClassMultiple();
			obj.setClassId(rs.getInt("ClassId"));
			obj.setParentId(rs.getInt("ParentId"));
			obj.setClassCode(rs.getString("ClassCode"));
			obj.setClassName(rs.getString("ClassName"));
			obj.setClassDesc(rs.getString("ClassDesc"));
			obj.setClassLevel(rs.getInt("ClassLevel"));
			obj.setClassStatusId(rs.getInt("ClassStatusId"));
            return obj;
		}		
	}


	@Override
	public List<ItemClassMultiple> findByClassLevel(int classLevel) {
		String sql = "SELECT ClassId,ParentId,ClassCode,ClassName,ClassDesc,ClassLevel,ClassStatusID "
				   + "FROM item_class "
				   + "WHERE ClassLevel = :classLevel";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("classLevel", classLevel);
		logger.info(sql);		
		return jdbc.query(sql, paramSource, new ItemClassMultipleRowMapper());
	}
	
	

}
