package com.brick.squad.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.expand.ShopActivitiesExpand;
import com.brick.squad.pojo.Business;
import com.brick.squad.pojo.ShopActivities;
import com.brick.squad.pojo.Type;
import com.brick.squad.pojo.User;
import com.brick.squad.service.ShopActivitiesService;
import com.brick.squad.util.Pagination;

@RequestMapping("/shopActivities")
@Controller
public class ShopActivitiesController {

	@Autowired
	@Qualifier("shopActivitiesService")
	private ShopActivitiesService shopActivitiesService;

	@RequestMapping("/toShopActivitiesList")
	public String toShopActivitiesList() {
		return "backstage_managed/jsp/shopActivities/shopActivities_list";

	}

	@RequestMapping("/getShopActivitiesList")
	@ResponseBody
	public String getShopActivitiesList(HttpServletRequest request,int pSize, int cPage,String keyword) {
		System.out.println(request.getSession().getAttribute("userId").toString()+"111111111111");
		Pagination pagination = new Pagination();
		pagination.setKeyword(keyword);
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		pagination.setUserId(request.getSession().getAttribute("userId").toString());
		return shopActivitiesService.shopActivitiesPagination(pagination);
	}
	@RequestMapping("/toAddShopActivities")
	public String toAddShopActivities(String businessId,HttpServletRequest request, String id)
			throws Exception {
		request.setAttribute("type",shopActivitiesService.findAllShopActivities());
		Business business =(Business) request.getSession().getAttribute("business");
		//通过商家ID查询店铺下的商品
		String data=shopActivitiesService.findArticle(business.getId());
		request.setAttribute("businessData",data);
		if (id != null) {
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updateShopActivitiesById");
			ShopActivities shopActivities = shopActivitiesService.findShopActivitiesById(id);
			request.setAttribute("shopActivities", shopActivities);
		} else {
			request.setAttribute("url", "addShopActivities");
			request.setAttribute("msg", "添加");
		}

		return "backstage_managed/jsp/shopActivities/add_shopActivities";

	}

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				dateFormat, true));
	}

	@RequestMapping("/addShopActivities")
	public String addShopActivities(@Validated ShopActivities shopActivities,
			BindingResult result, HttpServletRequest request) throws Exception {
		System.out.println(shopActivities.getTypeId() + "-----------------");
		if (result.hasErrors()) {
			List<ObjectError> errors = result.getAllErrors();
			request.setAttribute("errors", errors);
			request.setAttribute("url", "addShopActivities");
			request.setAttribute("msg", "添加");
			return "backstage_managed/jsp/shopActivities/add_shopActivities";
		}

		shopActivitiesService.insertShopActivitiesById(shopActivities);
		return "backstage_managed/jsp/shopActivities/shopActivities_list";
	}

	@RequestMapping("/deleteShopActivitiesById")
	@ResponseBody
	public String deleteShopActivitiesById(String id) throws Exception {
		shopActivitiesService.delectShopActivitiesById(id);
		return "success";

	}

	@RequestMapping("/findAllShopActivities")
	public String findAllShopActivities() {
		return shopActivitiesService.findAllShopActivities();

	}

	@RequestMapping("/updateShopActivitiesById")
	public String updateShopActivitiesById(ShopActivities shopActivities)
			throws Exception {

		shopActivitiesService.updateShopActivitiesById(shopActivities);

		return "backstage_managed/jsp/shopActivities/shopActivities_list";

	}

	@RequestMapping("/findShopActivitiesById")
	public String findShopActivitiesById(HttpServletRequest request, String id) {
		ShopActivitiesExpand shopActivitiesExpand = shopActivitiesService
				.findShopActivitiesAndTypeAndArticle(id);
		// System.out.println("+++++++++"+shopActivitiesExpand);
		request.setAttribute("shopActivitiesExpand", shopActivitiesExpand);
		return "backstage_managed/jsp/shopActivities/search_shopActivities";

	}

	@RequestMapping("/findTypeAndArticle")
	@ResponseBody
	public String findTypeAndArticle() {
		return shopActivitiesService.findTypeAndArticle();
	}

	@RequestMapping("/findArticle")
	@ResponseBody
	public String findArticle(String businessId, HttpServletRequest request) {
		return shopActivitiesService.findArticle(businessId);

	}
}