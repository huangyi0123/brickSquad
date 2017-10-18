package com.brick.squad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
}