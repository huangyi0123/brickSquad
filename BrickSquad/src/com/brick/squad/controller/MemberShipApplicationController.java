package com.brick.squad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.service.MemberShipApplicationService;
import com.brick.squad.util.Pagination;

@RequestMapping("/memberShipApplication")
@Controller
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
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		return memberShipApplicationService
				.MemberShipApplicationPagination(pagination);

	}

	@RequestMapping("/toAddMemberShipApplication")
	public String toAddMemberShipApplication() {
		return "backstage_managed/jsp/memberShipApplication/add_memberShipApplication";
	}
}
