package com.brick.squad.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import javax.jws.soap.SOAPBinding.Use;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.expand.ShoppingCarExpand;
import com.brick.squad.pojo.ShoppingCar;
import com.brick.squad.pojo.User;
import com.brick.squad.service.ShoppingCarService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.ShoppingCarPagination;

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

	/**
	 * 分页查询购物车信息
	 * */
	@RequestMapping("/getShoppingCarList")
	@ResponseBody
	public String getRegionList(int pSize, int cPage, String keyword)
			throws Exception {
		Pagination pagination = new Pagination();
		pagination.setKeyword(keyword);
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		String value = shoppingCarService.shoppingCarPagination(pagination);
		return value;
	}

	/**
	 * 添加购物车信息跳转编辑页面
	 * */
	@RequestMapping("/toAddShoppingCar")
	public String toAddShoppingCar(HttpServletRequest request, String id)
			throws Exception {
		if (id != null) {
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updateShoppingCar");
			ShoppingCar shoppingCar = shoppingCarService
					.findShoppingCarById(id);
			request.setAttribute("shoppingCar", shoppingCar);
		} else {
			request.setAttribute("url", "insertShoppingCar");
			request.setAttribute("msg", "添加");
		}
		return "backstage_managed/jsp/shoppingcar/add_shoppingcar";
	}

	/**
	 * 下拉框查询的信息： 查询老人姓名，商品名称
	 * */
	@RequestMapping("/findArticleAndPersonalInformation")
	@ResponseBody
	public String findArticleAndPersonalInformation() throws Exception {
		String articles = shoppingCarService
				.findArticleAndPersonalInformation();
		return articles;
	}

	/**
	 * 设置时间转换格式
	 * */
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				dateFormat, true));
	}

	/**
	 * 插入购物车信息
	 * */
	@RequestMapping("/insertShoppingCar")
	public String insertShoppingCar(ShoppingCar shoppingCar) throws Exception {
		shoppingCarService.insertShoppingCar(shoppingCar);
		return "backstage_managed/jsp/shoppingcar/shoppingcar_list";
	}

	/**
	 * 删除购物车
	 * */
	@RequestMapping("deleteShoppingCar")
	@ResponseBody
	public String deleteShoppingCar(String id) throws Exception {
		shoppingCarService.deleteShoppingCarById(id);
		return "success";
	}

	/**
	 * 修改购物车信息
	 * */
	@RequestMapping("/updateShoppingCar")
	public String updateShoppingCar(ShoppingCar shoppingCar) throws Exception {
		shoppingCarService.updateShoppingCarById(shoppingCar);
		return "backstage_managed/jsp/shoppingcar/shoppingcar_list";
	}

	@RequestMapping("/findShoppingCarAndUserAndPsersonalInformationById")
	public String findShoppingCarAndUserAndPsersonalInformationById(
			HttpServletRequest request, String id) throws Exception {
		ShoppingCarExpand shoppingCarExpand = shoppingCarService
				.findShoppingCarAndUserAndPsersonalInformationById(id);
		request.setAttribute("shoppingCarExpand", shoppingCarExpand);
		return "backstage_managed/jsp/shoppingcar/search_shoppingcar";
	}

	/**
	 * 前台跳转到购物车详情、准备数据页面
	 * 
	 * @throws Exception
	 */
	@RequestMapping("/detailsShoppingCar")
	public String detailsShoppingCar(HttpServletRequest request,ShoppingCarPagination shoppingCarPagination) throws Exception{
		
		//获取登陆id
		User user = (User) request.getSession().getAttribute("user");
		if (user!=null) {
			shoppingCarPagination.setPerId(user.getId());
			Map<String, Object> map=shoppingCarService.findArticIdAllArtic(shoppingCarPagination);
			request.setAttribute("map", map);
			return "frontEnd_manage/front_bootstrap/cart";
		}else {
			return "frontEnd_manage/front_bootstrap/cartNull";
		}
}	

	/**
	 * 前台删除购物车
	 * 
	 */
	@RequestMapping("/IndexDeleteShoppingCar")
	public String IndexDeleteShoppingCar(String id) throws Exception {
		shoppingCarService.deleteShoppingCarById(id);
		return "redirect:/shoppingCar/detailsShoppingCar";
	}
	@RequestMapping("/updateShoppingNumber")
	@ResponseBody
	public String updateShoppingNumber(ShoppingCar shoppingCar,HttpServletRequest request) {
		User user=(User) request.getSession().getAttribute("user");
		shoppingCar.setPerId(user.getId());
	return shoppingCarService.updateShoppingNumber(shoppingCar)+"";
	}
	@ResponseBody
	@RequestMapping("/shoppingCarAddOrder")
	public String shoppingCarAddOrder(float price,String ids,HttpServletRequest request) {
		User  user=(User) request.getSession().getAttribute("user");
		String ordersId=shoppingCarService.shoppingCarAddOrder(ids, price, user.getId());
		return ordersId;
	}
}