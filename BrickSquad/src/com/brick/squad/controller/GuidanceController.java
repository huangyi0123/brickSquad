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
	public String toAddGuidance(HttpServletRequest request,String id) throws Exception{
		//得到数据库中查询的身份证 姓名 id的json数据用于页面显示出来
		String	allPersonalInformationdata = guidanceService.findPerIdAndIdCard();
		request.setAttribute("allPersonalInformationdata", allPersonalInformationdata);
		if(id!= null){
			Guidance guidance = guidanceService.queryGuidanceById(id);
			request.setAttribute("selectGuidanceId", guidance);
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updateGuidanceById");
		}else
			System.out.println("1++++++++++++++++++++++++++++");
			request.setAttribute("msg", "添加");
			request.setAttribute("url", "insertGuidance");
		return "backstage_managed/jsp/guidance/add_guidance";
	}
	@RequestMapping(value="getGuidanceList")
	@ResponseBody
	public String getGuidanceList(int pSize,int cPage,String keyword) throws Exception{
		Pagination pagination = new Pagination();
		pagination.setKeyword(keyword);
		pagination.setPageSize(pSize);
		pagination.setCurentPage(cPage);
		pagination.setKeyword(keyword);
		return guidanceService.guidancePagination(pagination);
	}
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		System.out.println("4++++++++++++++++++++++++++++");
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}
	
	@RequestMapping("/insertGuidance")
	public String insertGuidance(Guidance guidance) throws Exception{
		
		System.out.println("2++++++++++++++++++++++++++++"+guidance.getGuidanceDate());
		guidanceService.insertGuidanceById(guidance);
		return "backstage_managed/jsp/guidance/guidance_list";
	}
	@RequestMapping("/deleteGuidanceById")
	public String deleteGuidanceById(String id) throws Exception{
		guidanceService.deleteGuidanceById(id);
		return "backstage_managed/jsp/guidance/guidance_list";
	}
	@RequestMapping("/updateGuidanceById")
	public String updateGuidanceById(Guidance guidance) throws Exception{
		guidanceService.updateGuidanceById(guidance);
		return "backstage_managed/jsp/guidance/guidance_list";
	}
	@RequestMapping("/findGuidanceById")
	public String findGuidanceById(HttpServletRequest request,String id) throws Exception{
		Guidance guidance = guidanceService.queryGuidanceById(id);
		request.setAttribute("guidance", guidance);
		return "backstage_managed/jsp/guidance/search_guidance";
	}
}
