package com.brick.squad.controller;

import java.text.SimpleDateFormat; 
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.ShopActivities;
import com.brick.squad.service.ShopActivitiesService;
import com.brick.squad.util.Pagination;


@RequestMapping("/shopActivities")
@Controller
public class ShopActivitiesController {
	
	@Autowired
	@Qualifier("shopActivitiesService")
	private ShopActivitiesService shopActivitiesService;
	
	@RequestMapping("toShopActivitiesList")
	public String toShopActivitiesList(){
		return "backstage_managed/jsp/shopActivities/shopActivities_list";
		
	}
	
	@RequestMapping("/getShopActivitiesList")
	@ResponseBody
	public String getShopActivitiesList(int pSize,int cPage,String keyword){
		Pagination pagination=new Pagination();
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		return  shopActivitiesService.shopActivitiesPagination(pagination);
}
	
	@RequestMapping("/toAddShopActivities")
	public String toAddShopActivities(){
		
		return "backstage_managed/jsp/shopActivities/add_shopActivities";
		
	}
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}
	
	@RequestMapping("/AddShopActivities")
	public String AddShopActivities(ShopActivities shopActivities) throws Exception{

		shopActivitiesService.insertShopActivitiesById(shopActivities);
		return "backstage_managed/jsp/shopActivities/shopActivities_list";
	}
	
	
	@RequestMapping("/deleteShopActivitiesById")
	@ResponseBody
	public String deleteShopActivitiesById(String id) throws Exception{
		shopActivitiesService.delectShopActivitiesById(id);
		return "success";
		
	}

	
	
	@RequestMapping("/updateActivitiesById")
	public String updateActivitiesById(ShopActivities shopActivities) throws Exception{
		
		shopActivitiesService.updateShopActivitiesById(shopActivities);
		return "backstage_managed/jsp/shopActivities/shopActivities_list";
		
	}
	
}