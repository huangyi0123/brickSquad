package com.brick.squad.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.Activities;
import com.brick.squad.pojo.MemberShipApplication;
import com.brick.squad.service.MemberShipApplicationService;
import com.brick.squad.util.Pagination;

@Controller
@RequestMapping("/memberShipApplication")
public class MemberShipApplicationController {
	@Autowired
	@Qualifier("memberShipApplicationService")
	private MemberShipApplicationService memberShipApplicationService;

	@RequestMapping("/toMemberShipApplicationList")
	public String toMemberShipApplicationList() {

		return "backstage_managed/jsp/memberShipApplication/memberShipApplication_list";
	}

	@RequestMapping("/getMemberShipApplicationList")
	@ResponseBody
	public String getMemberShipApplicationList(int pSize, int cPage,
			String keyword) {
		Pagination pagination = new Pagination();
		pagination.setKeyword(keyword);
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		return memberShipApplicationService.MemberShipApplicationPagination(pagination);

	}

	@RequestMapping("/toAddMemberShipApplication")
	public String toAddMemberShipApplication(HttpServletRequest request, String id) {
		if (id != null) {
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updateMemberShipApplicationById");
			MemberShipApplication memberShipApplication=memberShipApplicationService.findMemberShipApplicationById(id);
			request.setAttribute("memberShipApplication", memberShipApplication);
		} else {
			request.setAttribute("url", "addMemberShipApplication");
			request.setAttribute("msg", "添加");
		}
		return "backstage_managed/jsp/memberShipApplication/add_memberShipApplication";
	}
	
	@RequestMapping("/addMemberShipApplication")
	public String addMemberShipApplication(MemberShipApplication memberShipApplication){
		memberShipApplicationService.insertMemberShipApplicationById(memberShipApplication);
		return "backstage_managed/jsp/memberShipApplication/memberShipApplication_list";
		
	}
	
	@RequestMapping("/deleteMemberShipApplicationById")
	public String deleteMemberShipApplicationById(String id){
		memberShipApplicationService.deleteMemberShipApplicationById(id);
		return "backstage_managed/jsp/memberShipApplication/memberShipApplication_list";
	
	}
	
	@RequestMapping("/updateMemberShipApplicationById")
	public String updateMemberShipApplicationById(MemberShipApplication memberShipApplication){
		memberShipApplicationService.updateMemberShipApplicationById(memberShipApplication);
		return "backstage_managed/jsp/memberShipApplication/memberShipApplication_list";	
	}
	
	@RequestMapping("/findAllMemberShipApplication")
	@ResponseBody
	public String findAllMemberShipApplication(){
		return memberShipApplicationService.findAllMemberShipApplication();
		
	}
	
}
