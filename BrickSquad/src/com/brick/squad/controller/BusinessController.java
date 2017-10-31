package com.brick.squad.controller;

import javax.servlet.http.HttpServletRequest;
import javax.swing.Spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.ActivityRegistration;
import com.brick.squad.pojo.Business;
import com.brick.squad.pojo.Type;
import com.brick.squad.service.BusinessService;
import com.brick.squad.util.Pagination;

@Controller
@RequestMapping("/business")
public class BusinessController {
	@Autowired
	@Qualifier("businessService")
	private BusinessService businessService;

	@RequestMapping("/toBusiness")
	public String toBusiness() {
		return "backstage_managed/jsp/business/business_list";
	}

	@RequestMapping("/getBusinessList")
	@ResponseBody
	public String getBusinessList(int pSize, int cPage, String keyword) {
		Pagination pagination = new Pagination();
		pagination.setKeyword(keyword);
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		String data = businessService.businessPagination(pagination);
		return data;
	}
	@RequestMapping("/toAddBusiness")
	public String toAddBusiness(HttpServletRequest request, String id) {
		if (id != null) {
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updateBusinessById");
			Business business = businessService.findBusinessById(id);
			request.setAttribute("business", business);
		} else {
			request.setAttribute("url", "insertBusiness");
			request.setAttribute("msg", "添加");
		}
		return "backstage_managed/jsp/business/add_business";
	}
	
	@RequestMapping("/insertBusiness")
	  public String insertBusiness(Business business ) {
		  businessService.insertBusiness(business);
		  return "backstage_managed/jsp/business/business_list";
		
	}
	
	@RequestMapping("/updateBusinessById")
	public String updateBusinessById(Business business ) {
		businessService.updateBusinessById(business);
		return "backstage_managed/jsp/business/business_list";
		
	}
	
	@RequestMapping("/deleteBusinessById")
	@ResponseBody
	public String deleteBusinessById(String id) {
		businessService.deleteBusinessById(id);
		return "success";
				
	}
	
	@RequestMapping("/findBusinessById")
	public String findBusinessById(HttpServletRequest request,String id){
		Business business = businessService.findBusiness(id);
		request.setAttribute("business", business);
		return "backstage_managed/jsp/business/search_business";
	}
	
}
