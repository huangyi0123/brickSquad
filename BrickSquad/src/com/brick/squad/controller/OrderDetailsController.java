package com.brick.squad.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.OrderDetails;
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
	@RequestMapping("/toAddOrdersDetails")
	public String toAddOrdersDetails(HttpServletRequest request,String id) throws Exception {
		if(id!=null){
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updateOrdersDetails");
			OrderDetails orderDetails=orderDetailsService.findOrderDetailsById(id);
			request.setAttribute("orderDetails", orderDetails);
		}else{
			request.setAttribute("msg", "添加");
			request.setAttribute("url", "inseertOrdersDetails");//这儿的inseertOrdersDetails添加没有实现，需要用到再实现
		}
		return "backstage_managed/jsp/orderdetails/add_ordersdetails";
	}
	@RequestMapping("/deleteOrdersDetails")
	@ResponseBody
	public String deleteOrdersDetails(String id) throws Exception{
		orderDetailsService.deleteOrderDetails(id);
		return "success";
	}
	@RequestMapping("/updateOrdersDetails")
	public String updateOrdersDetails(OrderDetails orderDetails) throws Exception{
		orderDetailsService.updateOrderDetails(orderDetails);
		return "backstage_managed/jsp/orderdetails/orderdetails_list";
	}
	@RequestMapping("/findOrdersDetailsById")
	public String findOrdersDetailsById(HttpServletRequest request,String id) throws Exception{
		OrderDetails orderDetails=orderDetailsService.findOrderDetailsById(id);
		request.setAttribute("orderDetails", orderDetails);
		return "backstage_managed/jsp/orderdetails/search_orderdetails";
	}
}
