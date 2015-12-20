package com.athensoft.uaas.service;

import com.athensoft.uaas.entity.UserAccount;

public interface UserAccountService {
	public boolean resetPassword(UserAccount userAccount, String newPassword);
	public boolean isUserAccountValid(String accountName, String userPassword);
	public void createUserAccount(UserAccount userAccount);
}
