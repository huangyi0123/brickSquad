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
	public String toAddPersonalInformation(HttpServletRequest request, String id) {
		if (id != null) {
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updatePersonalInformationById");
			PersonalInformation personalInformation = personalInformationService.findPersonalInformationById(id);
			request.setAttribute("personalInformation", personalInformation);
		} else {
			request.setAttribute("url", "insertPersonalInformation");
			request.setAttribute("msg", "添加");
		}
		
		return "backstage_managed/jsp/personal_Information/add_personal_Information";
	}
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}
	@RequestMapping("/addPersonalInformation")
	public String addPersonalInformation(
			PersonalInformation personalInformation) {
		personalInformationService
				.insertPersonalInformation(personalInformation);
		return "backstage_managed/jsp/personal_Information/personal_Information_list";
	}

	@RequestMapping("/findAllPersonalInformation")
	@ResponseBody
	public String findAllPersonalInformation(){
		return personalInformationService.findAllPersonalInformation();
		
	}
@RequestMapping("/updatePersonalInformation")
public String updatePersonalInformation(PersonalInformation personalInformation){
	personalInformationService.updatePersonalInformationById(personalInformation);
	return "backstage_managed/jsp/personal_Information/personal_Information_list";
}

	@RequestMapping("/deletePersonalInformationById")
	@ResponseBody
	public String deletePersonalInformationById(String id){
		personalInformationService.deletePersonalInformationById(id);
		return "success";
	}

}
