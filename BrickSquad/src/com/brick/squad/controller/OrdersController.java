package com.brick.squad.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
import com.brick.squad.pojo.User;
import com.brick.squad.service.BuyersService;
import com.brick.squad.service.OrdersService;
import com.brick.squad.util.OrdersPayUtil;
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
	

	/**
	 * 修改订单状态和当前用户积分
	 * 
	 * @param orderId
	 *            订单ID
	 * @param monerCont
	 *            金额
	 * @param request
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/updateOrderStateAndGrade")
	@ResponseBody
	public String updateOrderStateAndGrade(String orderId,
			HttpServletRequest request) throws Exception {
		
		if (!orderId.trim().equals("")) {
			Boolean is = ordersService.updateOrderStateAndGrade(orderId);
			if (is) {
				return "success";
			} else {
				return "fail";
			}
		}
		return "fail";
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

	@RequestMapping("/getOrders")
	@ResponseBody
	public String getOrders(HttpServletRequest request, String typeId) {
		User user = (User) request.getSession().getAttribute("user");
		Map<String, String> map = new HashMap<String, String>();
		map.put("buyId", user.getId());
		map.put("typeId", typeId);
		return ordersService.findOrderByType(map);
	}
	/**易宝支付
	 * @throws Exception */
	@RequestMapping("/payOrder")
	public void payOrder(HttpServletResponse response,OrdersPayUtil ordersPayUtil) throws Exception{
		
		String id=ordersPayUtil.getId();
		String  pd_FrpId1=ordersPayUtil.getPd_FrpId();
		/*
		Order currOrder=orderService.findByOid(order.getOid());
		currOrder.setAddr(order.getAddr());
		currOrder.setPhone(order.getPhone());
		currOrder.setName(order.getName());
		orderService.update(currOrder);*/
	
		String p0_Cmd = "Buy"; 
		String p1_MerId = "10001126856";
		String p2_Order = id;
		String p3_Amt = "0.01"; 
		String p4_Cur = "CNY"; 
		String p5_Pid = ""; 
		String p6_Pcat = ""; 
		String p7_Pdesc = ""; 
		String p8_Url = "http://localhost:8080/shopIndex/toShop"; 
		String p9_SAF = ""; 
		String pa_MP = ""; 
		String pd_FrpId = pd_FrpId1;
		String pr_NeedResponse = "1"; 
		String keyValue = "69cl522AV6q613Ii4W6u8K6XuW8vM1N6bFgyv769220IuYe9u37N4y7rI4Pl"; 
		String hmac = com.brick.squad.util.PaymentUtil.buildHmac(p0_Cmd, p1_MerId, p2_Order, p3_Amt,
				p4_Cur, p5_Pid, p6_Pcat, p7_Pdesc, p8_Url, p9_SAF, pa_MP,
				pd_FrpId, pr_NeedResponse, keyValue); 

		StringBuffer sb = new StringBuffer("https://www.yeepay.com/app-merchant-proxy/node?");
		sb.append("p0_Cmd=").append(p0_Cmd).append("&");
		sb.append("p1_MerId=").append(p1_MerId).append("&");
		sb.append("p2_Order=").append(p2_Order).append("&");
		sb.append("p3_Amt=").append(p3_Amt).append("&");
		sb.append("p4_Cur=").append(p4_Cur).append("&");
		sb.append("p5_Pid=").append(p5_Pid).append("&");
		sb.append("p6_Pcat=").append(p6_Pcat).append("&");
		sb.append("p7_Pdesc=").append(p7_Pdesc).append("&");
		sb.append("p8_Url=").append(p8_Url).append("&");
		sb.append("p9_SAF=").append(p9_SAF).append("&");
		sb.append("pa_MP=").append(pa_MP).append("&");
		sb.append("pd_FrpId=").append(pd_FrpId).append("&");
		sb.append("pr_NeedResponse=").append(pr_NeedResponse).append("&");
		sb.append("hmac=").append(hmac);
		response.sendRedirect(sb.toString());
	}
	@RequestMapping("/callBack")
	public String callBack(){
		
		return "redirect:/";
	}
}
