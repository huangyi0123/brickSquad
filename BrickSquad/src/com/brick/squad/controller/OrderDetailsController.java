package com.brick.squad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.service.OrderDetailsService;
import com.brick.squad.util.Pagination;
@Controller
@RequestMapping("/orderDetails")
public class OrderDetailsController {
	@Autowired
	@Qualifier("orderDetailsService")
	private OrderDetailsService orderDetailsService;
	@RequestMapping("/toOrderDetailsList")
	public String toRegionList() {
		return "backstage_managed/jsp/orderdetails/orderdetails_list";
	}
	@RequestMapping("/getOrderDetailsList")
	@ResponseBody
	public String getRegionList(int pSize,int cPage,String keyword) throws Exception {
		Pagination pagination=new Pagination();
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		return orderDetailsService.orderDetailsPagination(pagination);
	}
}
