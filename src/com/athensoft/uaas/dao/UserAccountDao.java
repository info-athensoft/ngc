package com.athensoft.uaas.dao;

import com.athensoft.uaas.entity.UserAccount;

public interface UserAccountDao {
	
	/*search and view*/
	public UserAccount findUserAccount(String accountName, String userPassword);
	
	
	/*manage user account*/
	public void createUserAccount(UserAccount userAccount);
	
	public void removeUserAccount(UserAccount userAccount);
	
	public void removeUserAccount(long accountId);
	
	public UserAccount updateUserAccount(UserAccount userAccount);
	
	//validate
	public boolean isUserAccountExists(String accountName);
	public boolean isUserAccountValid(UserAccount userAccount);
	public boolean isUserAccountValid(String accountName, String userPassword);
	
	
}
