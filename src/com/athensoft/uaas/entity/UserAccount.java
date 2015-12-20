package com.athensoft.uaas.entity;

import java.io.Serializable;

public class UserAccount implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 7592667677198212155L;
	private long accountId;
	private String accountName;
    private String userPassword;
    private String email;
    
//    private Date createDate;
//    private Date lastModifiedDate;
    
    private int status;
    
    
    public long getAccountId() {
		return accountId;
		
	}

	public void setAccountId(long accountId) {
		this.accountId = accountId;
	}

	public String getAccountName() {
		return accountName;
	}

	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "UserAccount [accountId=" + accountId + ", accountName=" + accountName + ", userPassword="
				+ userPassword + ", email=" + email + ", status=" + status + "]";
	} 
	
	
}
