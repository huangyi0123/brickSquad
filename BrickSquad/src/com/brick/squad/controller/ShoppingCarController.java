package com.brick.squad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.ShoppingCar;
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
		String value=shoppingCarService.shoppingCarPagination(pagination);
		return  value;
	}
	@RequestMapping("/toAddShoppingCar")
	public String toAddShoppingCar() {
		return "backstage_managed/jsp/shoppingcar/add_shoppingcar";
	}
	@RequestMapping("/findArticleAndPersonalInformation")
	@ResponseBody
	public String findArticleAndPersonalInformation() throws Exception{
		String articles=shoppingCarService.findArticleAndPersonalInformation();
		return articles;
	}
	@RequestMapping("/insertShoppingCar")
	public String insertShoppingCar(ShoppingCar shoppingCar) throws Exception{
		shoppingCarService.insertShoppingCar(shoppingCar);
		return "backstage_managed/jsp/shoppingcar/shoppingcar_list";
	}

}
