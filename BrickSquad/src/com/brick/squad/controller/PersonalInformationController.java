package com.brick.squad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.Medical;
import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.service.PersonalInformationService;
import com.brick.squad.util.Pagination;

@Controller
@RequestMapping("/personalInformation")
public class PersonalInformationController {
	@Autowired
	@Qualifier("personalInformationService")
	private PersonalInformationService personalInformationService;

	@RequestMapping("/toPersonalInformation")
	public String toPersonalInformation() {
		return "backstage_managed/jsp/personal_Information/personal_Information_list";
	}

	@RequestMapping("/getPersonalInformationList")
	@ResponseBody
	public String getPersonalInformationList(int pSize, int cPage,
			String keyword) {
		Pagination pagination = new Pagination();
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		String data = personalInformationService
				.personalInformationPagination(pagination);
		return data;
	}

	@RequestMapping("/toAddPersonalInformation")
	public String toAddPersonalInformation() {
		return "backstage_managed/jsp/personal_Information/add_personal_Information";
	}

	@RequestMapping("/addPersonalInformation")
	public String addPersonalInformation(
			PersonalInformation personalInformation) {
		personalInformationService
				.insertPersonalInformation(personalInformation);
		return "backstage_managed/jsp/personal_Information/personal_Information_list";
	}
}
