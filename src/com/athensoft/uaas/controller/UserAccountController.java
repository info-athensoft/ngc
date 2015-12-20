package com.athensoft.uaas.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.athensoft.uaas.entity.UserAccount;
import com.athensoft.uaas.service.UserAccountService;

@Controller
public class UserAccountController {
	
	UserAccountService userAccountService;

	@Autowired
	@Qualifier("userAccountServiceImpl")
	public void setUserAccountService(UserAccountService userAccountService) {
		this.userAccountService = userAccountService;
	}
	
	@RequestMapping(value="/userlogin.do", method=RequestMethod.POST)
	public ModelAndView doUserLogin(@RequestParam String accountName, @RequestParam String userPassword, HttpSession session){
		
//		System.out.println("userlogin.do"+accountName+"  "+userPassword);
		
		ModelAndView mav = new ModelAndView();
		
		boolean isUserAccountValid = userAccountService.isUserAccountValid(accountName, userPassword);
		
//		System.out.println("isUserAccountValid="+isUserAccountValid);
		
		String viewName = "";
		if(isUserAccountValid){
			viewName = "redirect:index.jsp";
			session.setAttribute("accountName", accountName);
		}else{
			viewName = "test_login_failed";
		}
		mav.setViewName(viewName);
		
		return mav;
	}
	
	@RequestMapping("/userlogout.do")
	public String doUserLogout(HttpSession session){
		session.removeAttribute("accountName");
		return "redirect:index.jsp";
	}
	
	
	
	@RequestMapping(value="/userregister.do", method=RequestMethod.POST)
	public ModelAndView doUserRegister(@RequestParam String accountName, @RequestParam String userPassword, HttpSession session){
		
		ModelAndView mav = new ModelAndView();
		UserAccount userAccount = new UserAccount();
		userAccount.setAccountName(accountName);
		userAccount.setUserPassword(userPassword);
		userAccount.setEmail(accountName);   //set email = accountName , business rule
		
		userAccountService.createUserAccount(userAccount);
		
		
		String viewName = "shop-login";
		
		mav.setViewName(viewName);
		
		return mav;
	}	
	
	
	
}
