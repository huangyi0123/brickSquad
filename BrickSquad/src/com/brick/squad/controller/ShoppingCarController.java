package com.brick.squad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.service.ShoppingCarService;
import com.brick.squad.util.Pagination;

@Controller
@RequestMapping("/shoppingCar")
public class ShoppingCarController {
	@Autowired
	@Qualifier("shoppingCarService")
	private ShoppingCarService shoppingCarService;
	@RequestMapping("/toShoppingCarList")
	public String toRegionList() {
		return "backstage_managed/jsp/shoppingcar/shoppingcar_list";
	}
	@RequestMapping("/getShoppingCarList")
	@ResponseBody
	public String getRegionList(int pSize,int cPage,String keyword) throws Exception {
		Pagination pagination=new Pagination();
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		return shoppingCarService.shoppingCarPagination(pagination);
	}

}
