package com.brick.squad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.Limits;
import com.brick.squad.service.LimitsService;
import com.brick.squad.util.Pagination;

@Controller
@RequestMapping("/limits")
public class LimitsController {
	@Autowired
	@Qualifier("limitsService")
	private LimitsService limitsService;
	@RequestMapping("/toLimitsList")
	public String toLimitsList() {
		return "backstage_managed/jsp/limits/limits_list";
	}
	@RequestMapping("/getLimitsList")
	@ResponseBody
	public String getLimitsList(int pSize,int cPage,String keyword) {
		Pagination pagination=new Pagination();
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		String data=limitsService.limitsPagination(pagination);
		return data;
	}
	
	@RequestMapping("/toAddLimits")
	public String toAddLimits(){
		return "backstage_managed/jsp/limits/add_limits";
		
	}
	
	@RequestMapping("/addLimits")
	public String addLimits(Limits limits){
		System.out.println(limits.getRoleId()+"6666");
		limitsService.insertLimits(limits);
		return "backstage_managed/jsp/limits/limits_list";
	}
}
