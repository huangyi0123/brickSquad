package com.brick.squad.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.brick.squad.expand.OrdersExpand;
import com.brick.squad.pojo.Orders;
import com.brick.squad.service.BuyersService;
import com.brick.squad.service.OrdersService;
import com.brick.squad.util.Pagination;

@Controller
@RequestMapping("/orders")
public class OrdersController {
	@Autowired
	@Qualifier("ordersService")
	private OrdersService ordersService;
	@Autowired
	@Qualifier("buyersService")
	private BuyersService buyersService;

	@RequestMapping("/toOrdersList")
	public String toRegionList() {
		return "backstage_managed/jsp/orders/orders_list";
	}

	@RequestMapping("/getOrdersList")
	@ResponseBody
	public String getRegionList(int pSize, int cPage, String keyword)
			throws Exception {
		Pagination pagination = new Pagination();
		pagination.setKeyword(keyword);
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		return ordersService.ordersPagination(pagination);
	}

	@RequestMapping("/findOrdersById")
	public ModelAndView findOrdersById(String id) throws Exception {
		Orders orders = ordersService.findOrdersById(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("orders", orders);
		modelAndView.setViewName("/backstage_managed/jsp/orders/editeOrders");
		return modelAndView;
	}

	@RequestMapping("/toAddOrders")
	public String toAddOrders(HttpServletRequest request, String id)
			throws Exception {
		if (id != null) {
			OrdersExpand ordersExpand = ordersService
					.findBuyserAndPersonalInformation(id);
			request.setAttribute("ordersName", ordersExpand);
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updateOrders");
			Orders orders = ordersService.findOrdersById(id);
			request.setAttribute("orders", orders);
		} else {
			request.setAttribute("msg", "添加");
			request.setAttribute("url", "inserOrders");// 这儿的inserOrders添加，暂时还没有写
		}
		return "backstage_managed/jsp/orders/add_orders";
	}

	@RequestMapping("/findAllOrders")
	@ResponseBody
	public String findAllOrders() throws Exception {
		return ordersService.findOrders();
	}

	@RequestMapping("/deleteOrders")
	@ResponseBody
	public String deleteOrders(String id) throws Exception {
		ordersService.deleteOrdersById(id);
		return "success";
	}

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				dateFormat, true));
	}

	@RequestMapping("/updateOrders")
	public String updateOrders(Orders orders) throws Exception {
		ordersService.updateOrdersById(orders);
		return "backstage_managed/jsp/orders/orders_list";
	}

	@RequestMapping("/findOrdersAndBuyserById")
	public String findOrdersAndBuyserById(HttpServletRequest request, String id)
			throws Exception {
		OrdersExpand ordersExpand = ordersService.findOrdersAndBuyserById(id);
		request.setAttribute("ordersExpand", ordersExpand);
		return "backstage_managed/jsp/orders/search_orders";
	}
}
