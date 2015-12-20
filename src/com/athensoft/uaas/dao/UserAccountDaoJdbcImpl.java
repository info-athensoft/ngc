package com.athensoft.uaas.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Component;

import com.athensoft.persistence.jdbc.JdbcUtil;
import com.athensoft.uaas.entity.UserAccount;


public class UserAccountDaoJdbcImpl implements UserAccountDao {

	/** Logger for this class and subclasses */
    protected final Log logger = LogFactory.getLog(getClass());
	
	@Override
	public UserAccount findUserAccount(String accountName, String userPassword) {
		
	        logger.info("entering findUserAccount()...");
	        logger.debug("accountName"+accountName);
	        logger.debug("userPassword"+userPassword);

	        //data access utility objects
	        JdbcUtil jdbcUitl 		= new JdbcUtil();
	    	Connection conn 		= null;
	    	PreparedStatement pstmt = null;
	    	ResultSet rs 			= null;
	        
	        
	        //query
	        String sql = "select account_id, account_name, user_password, status from user_account where account_name=? and user_password=?";
	        logger.debug(sql);
	        
	        UserAccount ua = null;
	        
	        try {
				conn = jdbcUitl.getConn();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, accountName);
				pstmt.setString(2, userPassword);
				
				rs = pstmt.executeQuery();				
				
				while (rs.next()) {	
					ua = new UserAccount();
					ua.setAccountId(rs.getLong("account_id"));
					ua.setAccountName(rs.getString("account_name"));
					ua.setUserPassword(rs.getString("user_password"));
					ua.setStatus(rs.getInt("status"));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				jdbcUitl.close(rs);
				jdbcUitl.close(pstmt);
				jdbcUitl.close(conn);
			}
	 
			logger.info("exiting findUserAccount()...");
		return ua;
	}

	@Override
	public UserAccount updateUserAccount(UserAccount ua) {		
		logger.info("entering saveUserAccount()...");
		logger.info("Saving user account: " + "account_id="+ua.getAccountId()+","+"account_name="+ua.getAccountName());
		
		//data access utility objects
		JdbcUtil jdbcUitl 		= new JdbcUtil();
    	Connection conn 		= null;
    	PreparedStatement pstmt = null;
    	ResultSet rs 			= null;
		
		//query
        String sql = "update user_account set user_password=?, status=? from user_account where account_name=?";
        logger.debug(sql);
        
        
        try {
			conn = jdbcUitl.getConn();
			pstmt = conn.prepareStatement(sql);			
			pstmt.setString(1, ua.getAccountName());			
			pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			jdbcUitl.close(rs);
			jdbcUitl.close(pstmt);
			jdbcUitl.close(conn);
		}
        
        logger.info("exiting saveUserAccount()...");
        return ua;
	}

	@Override
	public void createUserAccount(UserAccount ua) {
		logger.info("entering createUserAccount()...");
		logger.info("creating user account: " + "account_id="+ua.getAccountId()+","+"account_name="+ua.getAccountName());
		
    	//validate if the record whose unique key is duplicated
    	String validateStr = "select 1 from user_account where account_name = ? limit 1"; 
    	logger.debug(validateStr);   	
    	
    	
		//query    	
        String sql = "insert into user_account(account_name,user_password,create_date,last_modified_date,status) values(?,?,?,?,?)";
        logger.debug(sql);
        final int USER_ACCOUNT_STATUS 	= 0;  //registered, inactivated        
        final Date dateCreate 			= new Date();
        final Date dateLastModified 	= dateCreate;
        
        
        //data access utility objects
		JdbcUtil jdbcUitl 		= new JdbcUtil();
    	Connection conn 		= null;
    	PreparedStatement pstmt = null;
    	PreparedStatement pstmtValidate = null;
    	ResultSet rs 			= null;
    	
        
        try {
			conn = jdbcUitl.getConn();
			
			pstmtValidate = conn.prepareStatement(validateStr);
			pstmtValidate.setString(1, ua.getAccountName());			
			rs = pstmtValidate.executeQuery();				
			
			int tmpCount = 0;
			while (rs.next()) {	
				tmpCount = rs.getInt(1);
				logger.debug("if exists, count ="+tmpCount);
			}
			
			if(tmpCount==1){
				logger.info("account_name already exists");
			}else{
				//
				pstmt = conn.prepareStatement(sql);			
				pstmt.setString(1, ua.getAccountName());			
				pstmt.setString(2, ua.getUserPassword());			
				pstmt.setTimestamp(3, new java.sql.Timestamp(dateCreate.getTime()));
				pstmt.setTimestamp(4, new java.sql.Timestamp(dateLastModified.getTime()));
				pstmt.setInt(5, USER_ACCOUNT_STATUS);			
				pstmt.executeUpdate();
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			jdbcUitl.close(rs);
			jdbcUitl.close(pstmt);
			jdbcUitl.close(pstmtValidate);
			jdbcUitl.close(conn);
		}
        
        logger.info("exiting createUserAccount()...");
		
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
	public boolean isUserAccountExists(String accountName) {
		logger.info("entering isUserAccountExists()...");
		logger.info("looking up user account: " +"account_name="+accountName);
		
		boolean isUserAccountExists = false;
		
    	//validate if the record whose unique key is duplicated
    	String validateStr = "select 1 from user_account where account_name = ? limit 1"; 
    	logger.debug(validateStr);   	
    	
    	
        
        
        //data access utility objects
		JdbcUtil jdbcUitl 		= new JdbcUtil();
    	Connection conn 		= null;
    	PreparedStatement pstmtValidate = null;
    	ResultSet rs 			= null;
    	
        
        try {
			conn = jdbcUitl.getConn();
			
			pstmtValidate = conn.prepareStatement(validateStr);
			pstmtValidate.setString(1, accountName);			
			rs = pstmtValidate.executeQuery();				
			
			int tmpCount = 0;
			while (rs.next()) {	
				tmpCount = rs.getInt(1);
				logger.debug("if exists, count ="+tmpCount);
			}
			
			if(tmpCount==1){
				logger.info("account_name already exists");
				isUserAccountExists = true;
			}else{
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			jdbcUitl.close(rs);
			jdbcUitl.close(pstmtValidate);
			jdbcUitl.close(conn);
		}
        
        logger.info("exiting isUserAccountExists()...");
		return isUserAccountExists;
	}

	@Override
	public boolean isUserAccountValid(UserAccount userAccount) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isUserAccountValid(String accountName, String userPassword) {
		// TODO Auto-generated method stub
		return false;
	}

}
