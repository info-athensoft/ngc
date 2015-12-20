package com.athensoft.ecomm.controller.global;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ServiceController {
	
	@RequestMapping("/print_create_job.do")	
	public ModelAndView createprintJob(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("print-create-job");		
		return mav;
	}
	
	@RequestMapping("/print_edit_job.do")	
	public ModelAndView editPrintJob(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("print-edit-job");		
		return mav;
	}
	
	@RequestMapping("/print_job_list.do")	
	public ModelAndView printUploadFile(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("print-job-list");		
		return mav;
	}
	
	@RequestMapping("/print_checkout.do")	
	public ModelAndView printCheckout(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("print-checkout");		
		return mav;
	}
	
	
}
