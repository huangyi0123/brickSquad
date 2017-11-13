package com.brick.squad.controller;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.service.BusinessService;
import com.brick.squad.service.BuyersService;
import com.brick.squad.service.CouponService;
import com.brick.squad.service.TypeService;
import com.brick.squad.util.Pagination;
import com.brick.squad.pojo.Business;
import com.brick.squad.pojo.Coupon;
import com.brick.squad.pojo.Type;

@Controller
@RequestMapping("/coupon")

public class CouponController {
	@Autowired
	@Qualifier("couponService")
	private CouponService couponService;
	@Autowired
	@Qualifier("typeService")
	private TypeService typeService;
	@Autowired
	@Qualifier("businessService")
	private BusinessService businessService;
	//后台分页显示
	@RequestMapping("/toCouponList")
	public String toCouponList(){
		return "backstage_managed/jsp/coupon/coupon_list";
	}
	@RequestMapping("getCouponList")
	@ResponseBody
	public String getCouponList(int pSize, int cPage, String keyword){
		Pagination pagination = new Pagination();
		pagination.setKeyword(keyword);
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		return couponService.findListCouponPagination(pagination);
	}
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				dateFormat, true));
	}
	//后台添加
	@RequestMapping("toAddCoupon")
	public String toAddCoupon(HttpServletRequest request,String id){
		//查询出所有优惠券名称
		String dataType= typeService.findTypeByParentId("c79b8c82c83b11e7aca65254002ec43c");
		request.setAttribute("dataType", dataType);
		String dataBusness = businessService.findAllBusiness();
		request.setAttribute("dataBusness", dataBusness);
		if (id != null) {
			Coupon coupon	=couponService.findCouponById(id);
			request.setAttribute("coupon", coupon);
			Business business =businessService.findBusinessById(coupon.getBuyersId());
			String newid =coupon.getBuyersId();
			request.setAttribute("newid", newid);
			String busName=business.getName();
			request.setAttribute("busName", busName);
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updateCouponById");
		} else {
			request.setAttribute("url", "insertCoupon");
			request.setAttribute("msg", "添加");
		}
		return "backstage_managed/jsp/coupon/add_coupon";
	}
	//后台插入
	@RequestMapping("insertCoupon")
	public String insertCoupon(Coupon coupon){
		couponService.insertCouponById(coupon);
		return "backstage_managed/jsp/coupon/coupon_list";
	}
	//后台删除
	@RequestMapping("deleteCouponById")
	public String deleteCouponById(String id){
		couponService.deleteCouponAllById(id);
		return "backstage_managed/jsp/coupon/coupon_list";
	}
	//后台修改
	@RequestMapping("updateCouponById")
	public String updateCouponById(Coupon coupon){
		couponService.updateCouponById(coupon);
		return "backstage_managed/jsp/coupon/coupon_list";
	}
	//后台查看详情
	@RequestMapping("searchCoupon")
	public String searchCoupon(HttpServletRequest request,String id){
		String dataType= typeService.findTypeByParentId("c79b8c82c83b11e7aca65254002ec43c");
		request.setAttribute("dataType", dataType);
		Coupon coupon	=couponService.findCouponById(id);
		request.setAttribute("coupon", coupon);
		Business business =businessService.findBusinessById(coupon.getBuyersId());
		String newid =coupon.getBuyersId();
		request.setAttribute("newid", newid);
		String busName=business.getName();
		request.setAttribute("busName", busName);
		return "backstage_managed/jsp/coupon/search_coupon";
	}
	@RequestMapping("/findArticleType")
	public String findArticleType(HttpServletRequest request) {
		List<Type> types=typeService.getArctre("splb");
		request.setAttribute("types", types);
		return "frontEnd_manage/front_bootstrap/apply_coupon";
	}
	
}
