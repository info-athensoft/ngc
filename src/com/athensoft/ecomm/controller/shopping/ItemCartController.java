package com.athensoft.ecomm.controller.shopping;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class ItemCartController {
	
	@RequestMapping("/shop_cart.do")	
	public ModelAndView addToCart(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop-cart");	
		
		return mav;
	}	

	@RequestMapping("/shop_checkout.do")	
	public ModelAndView proceedToCheckout(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop-checkout");	
		
		return mav;
	}

}
