package com.athensoft.uaas.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.athensoft.uaas.dao.UserAccountDao;
import com.athensoft.uaas.entity.UserAccount;

@Service("userAccountServiceImpl")
public class UserAccountServiceImpl implements UserAccountService{

	private UserAccountDao userAccountDao;	
	
	@Autowired
	@Qualifier("userAccountDaoParam")
	public void setUserAccountDao(UserAccountDao userAccountDao) {
		this.userAccountDao = userAccountDao;
	}

	@Override
	public boolean resetPassword(UserAccount userAccount, String newPassword) {
		boolean isReset = false;
		// TODO Auto-generated method stub
		return isReset;
	}
	
	@Override
	public boolean isUserAccountValid(String accountName, String userPassword){
		return userAccountDao.isUserAccountValid(accountName, userPassword);
	}

	@Override
	public void createUserAccount(UserAccount userAccount) {
		userAccountDao.createUserAccount(userAccount);		
	}
}
