package com.brick.squad.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.Guidance;
import com.brick.squad.service.GuidanceService;
import com.brick.squad.util.Pagination;

@Controller
@RequestMapping(value="/guidance")
public class GuidanceController {
	@Autowired
	@Qualifier(value="guidanceService")
	private GuidanceService guidanceService;
	@RequestMapping(value="/toGuidanceList")
	public String toGuidanceList(){
		return "backstage_managed/jsp/guidance/guidance_list";
	}
	@RequestMapping(value="/toAddGuidance")
	public String toAddGuidance(){
		return "backstage_managed/jsp/guidance/add_guidance";
	}
	@RequestMapping(value="getGuidanceList")
	@ResponseBody
	public String getGuidanceList(int pSize,int cPage,String keyword) throws Exception{
		Pagination pagination = new Pagination();
		pagination.setPageSize(pSize);
		pagination.setCurentPage(cPage);
		pagination.setKeyword(keyword);
		return guidanceService.guidancePagination(pagination);
	}
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}
	@RequestMapping(value="/insertGuidance")
	public String insertGuidance(Guidance guidance) throws Exception{
		guidanceService.insertGuidanceById(guidance);
		return "backstage_managed/jsp/guidance/guidance_list";
	}
}
