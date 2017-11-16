package com.brick.squad.controller;





import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestMapping;


















import com.brick.squad.expand.ArticleExpand;
import com.brick.squad.pojo.ShoppingCar;
import com.brick.squad.pojo.User;
import com.brick.squad.service.CollectionService;
import com.brick.squad.service.ShoppingCarService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.PaginationCollection;

@Controller
@RequestMapping("/collectionFront")
public class CollectionControllerFront {
	@Autowired
	@Qualifier("collectionService")
	private CollectionService collectionService;
	@Autowired
	@Qualifier("shoppingCarService")
	private ShoppingCarService shoppingCarService;
	//查询用户收藏信息
	@RequestMapping("/collectionMessage")
	public String collectionMessage(PaginationCollection pagination,HttpServletRequest request){
		//根据登陆Pid获取收藏信息
		User user=(User) request.getSession().getAttribute("user");
		if (user!=null) {
			pagination.setUserId(user.getId());
			Map<String, Object> articleExpand=collectionService.findCollectionMessage(pagination);
			request.setAttribute("collectionMessage",articleExpand);
		}
		
		return "frontEnd_manage/front_bootstrap/wishlist";
	}
	//删除用户收藏信息
	@RequestMapping("/deleteCollectionMessage")
	public String deleteCollectionMessage(String collectionId){
		collectionService.deleteCollectionById(collectionId);
		return "redirect:/collectionFront/collectionMessage";
	}
	//用户添加至购物车
	@RequestMapping("/addShopCar")
	public String  addShopCar(ShoppingCar shoppingCar,HttpServletRequest request) throws Exception {
		shoppingCar.setDate(new Date());
		shoppingCar.setNumber(1);
		shoppingCarService.insertShoppingCar(shoppingCar);
		return "redirect:/collectionFront/collectionMessage";
	}
		
	
}
