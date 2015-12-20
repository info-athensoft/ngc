package com.athensoft.uaas.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import com.athensoft.uaas.entity.UserAccount;

@Component("userAccountDaoParam")
public class UserAccountDaoParamImpl implements UserAccountDao {

	private static final Logger logger = Logger.getLogger(UserAccountDaoParamImpl.class);
	
	private NamedParameterJdbcTemplate jdbc;
	
	@Autowired
	public void setDataSource(DataSource dataSource){
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}
	
	@Override
	public UserAccount findUserAccount(String accountName, String userPassword) {
		
		String sql = "select account_id, account_name, user_password, email, status "
	               + "from uaas_account "
				   + "where account_name=:accountName and user_password=:userPassword";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("accountName", accountName);
		paramSource.addValue("userPassword", userPassword);		
		logger.info(sql);
		return jdbc.queryForObject(sql, paramSource, new UserAccountRowMapper());
		
	}

	@Override
	public void createUserAccount(UserAccount userAccount) {
		String sql = "insert into uaas_account(account_name,user_password,email,create_date,last_modified_date,status) values(:accountName,:userPassword,:email,:createDate,:lastModifiedDate,:status)";
        logger.debug(sql);
        final int USER_ACCOUNT_STATUS 	= 1;  //1: registered and active, 0: in-activated, 2: locked, pending     
        final Date dateCreate 			= new Date();
        final Date dateLastModified 	= dateCreate;
        MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("accountName", userAccount.getAccountName());
		paramSource.addValue("userPassword", userAccount.getUserPassword());
		paramSource.addValue("email",userAccount.getEmail());
		paramSource.addValue("createDate",new java.sql.Timestamp(dateCreate.getTime()));
		paramSource.addValue("lastModifiedDate",new java.sql.Timestamp(dateCreate.getTime()));
		paramSource.addValue("status",USER_ACCOUNT_STATUS);
		jdbc.update(sql, paramSource);
	}

	@Override
	public void removeUserAccount(UserAccount userAccount) {
		// TODO Auto-generated method stub

	}

	@Override
	public void removeUserAccount(long accountId) {
		// TODO Auto-generated method stub

	}

	@Override
	public UserAccount updateUserAccount(UserAccount userAccount) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isUserAccountExists(String accountName) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isUserAccountValid(UserAccount userAccount) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isUserAccountValid(String accountName, String userPassword) {
		String sql = "select count(*) "
	               + "from uaas_account "
				   + "where account_name=:accountName and user_password=:userPassword";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("accountName", accountName);
		paramSource.addValue("userPassword", userPassword);		
		logger.info(sql);
		Integer count = (Integer)jdbc.queryForObject(sql, paramSource, Integer.class);
		boolean isValid = false;
		if(count==1){
			isValid = true;
		}
		return isValid;
	}
	
	
	private static class UserAccountRowMapper implements RowMapper<UserAccount>{
		public UserAccount mapRow(ResultSet rs, int rowNumber) throws SQLException {
			UserAccount x = new UserAccount();
			x.setAccountId(rs.getInt("account_id"));
			x.setAccountName(rs.getString("account_name"));
			x.setUserPassword(rs.getString("user_password"));
			x.setEmail(rs.getString("email"));
			x.setStatus(rs.getInt("status"));			
            return x;
		}		
	}

}
