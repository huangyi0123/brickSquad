package com.brick.squad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.service.OrdersService;
import com.brick.squad.util.Pagination;

@Controller
@RequestMapping("/orders")
public class OrdersController {
	@Autowired
	@Qualifier("ordersService")
	private OrdersService ordersService;
	@RequestMapping("/toOrdersList")
	public String toRegionList() {
		return "backstage_managed/jsp/orders/orders_list";
	}
	@RequestMapping("/getOrdersList")
	@ResponseBody
	public String getRegionList(int pSize,int cPage,String keyword) throws Exception {
		Pagination pagination=new Pagination();
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		return ordersService.ordersPagination(pagination);
	}
}
