package com.athensoft.ecomm.controller.item;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.athensoft.ecomm.entity.item.Item;
import com.athensoft.ecomm.entity.sale.ItemSaleFeatured;
import com.athensoft.ecomm.service.item.ItemService;
import com.athensoft.ecomm.service.sale.ItemSaleFeaturedService;
import com.athensoft.ecomm.service.sale.ItemSaleService;

@Controller
public class ItemContorller {
	private ItemService itemService;
	
	@Autowired
	public void setItemService(ItemService itemService){
		this.itemService = itemService;
	}
	
	private ItemSaleFeaturedService itemSaleFeaturedService;
	
	@Autowired
	public void setItemSaleFeaturedService(ItemSaleFeaturedService itemSaleFeaturedService){
		this.itemSaleFeaturedService = itemSaleFeaturedService;
	}
	
	private ItemSaleService itemSaleService;
	
	@Autowired
	public void setItemSaleService(ItemSaleService itemSaleService){
		this.itemSaleService = itemSaleService;
	}
	
	
		
	@RequestMapping(value="/getallitems.do",method=RequestMethod.POST,produces="application/json")
	@ResponseBody
	public Map<String, Object> getAllItems(){
		ModelAndView mav = new ModelAndView();		
		//set model
		Map<String, Object> model = mav.getModel();		
		List<Item> itemList = itemService.findAll();
		//System.out.println(itemList.size());
		model.put("itemList", itemList);
		return model;
	}
	
	@RequestMapping(value="/getitem_classcode.do",method=RequestMethod.POST,produces="application/json")
	@ResponseBody
	public Map<String, Object> getItemByClassCode(@RequestParam String itemClassCode){
			
		ModelAndView mav = new ModelAndView();
		
		//set model
		Map<String, Object> model = mav.getModel();		
		List<Item> itemList = itemService.findByClassCode(itemClassCode);
		//System.out.println(itemList.size());
		model.put("itemList", itemList);
		return model;
	}
	
	
	@RequestMapping(value="/search_item_fuzzy.do",method=RequestMethod.POST,produces="application/json")
	@ResponseBody
	public Map<String, Object> searchItemFuzzy(@RequestParam String queryString){
		
		System.out.println("entering /search_item_fuzzy.do");
		ModelAndView mav = new ModelAndView();
		
		//set model
		Map<String, Object> model = mav.getModel();		
		List<Item> itemList = itemSaleService.findItemFuzzy(queryString);
		model.put("itemList", itemList);
		
		System.out.println("itemList.size()="+itemList.size());
		return model;
	}
	/*
	@RequestMapping(value="/search_item_fuzzy.do",method=RequestMethod.POST,produces="application/json")
	public ModelAndView searchItemFuzzy(@RequestParam String queryString){
		
		System.out.println("entering /search_item_fuzzy.do");
		ModelAndView mav = new ModelAndView();
		
		//set model
		Map<String, Object> model = mav.getModel();		
		List<Item> itemList = itemSaleService.findItemFuzzy(queryString);
		model.put("itemList", itemList);
		
		mav.setViewName("shop-sidebar");
		
		System.out.println("itemList.size()="+itemList.size());
		return mav;
	}*/
	
	
	
	/*
	@RequestMapping(value="/getitem_classcode.do",method=RequestMethod.POST,produces="application/json")
	@ResponseBody
	public Map<String, Object> getItemByClassCode(@RequestParam String itemClassCode){
		
		System.out.println("getitem_classcode.do");
		
		ModelAndView mav = new ModelAndView();
		
		//set model
		Map<String, Object> model = mav.getModel();		
		List<Item> itemList = itemService.findByClassCode(itemClassCode);
		//System.out.println(itemList.size());
		model.put("itemList", itemList);
		return model;
	}
	*/
	
	
	
	@RequestMapping("/viewitemdetail.do")	
	public ModelAndView viewItemDetail(@RequestParam int itemId){
		System.out.println("entering.. viewitemdetail.do");
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> model = mav.getModel();		
		Item item = itemService.getItemById(itemId);
		model.put("item", item);
		
		//featured item
		List<ItemSaleFeatured> featuredItemList = itemSaleFeaturedService.getFeaturedItem();
		model.put("featuredItemList", featuredItemList);
		
		
//		System.out.println(item);
		
		
		mav.setViewName("shop-product-sidebar");		
		return mav;
	}	

}
