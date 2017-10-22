package com.brick.squad.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.Medical;
import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.service.AddressService;
import com.brick.squad.service.PersonalInformationService;
import com.brick.squad.util.Pagination;

@Controller
@RequestMapping("/personalInformation")
public class PersonalInformationController {
	@Autowired
	@Qualifier("personalInformationService")
	private PersonalInformationService personalInformationService;
	@Autowired
	@Qualifier("addressService")
	private AddressService addressService;
	
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
	public String toAddPersonalInformation(HttpServletRequest request, String id) throws Exception {

		String provinceData = personalInformationService.findRegionsByLevel();
		request.setAttribute("provinceData", provinceData);
		String nationData = personalInformationService.findTypesByParentId();
		request.setAttribute("nationData", nationData);
		if (id != null) {
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updatePersonalInformationById");
			PersonalInformation personalInformation = personalInformationService
					.findPersonalInformationById(id);
			request.setAttribute("personalInformation", personalInformation);
			Address address = personalInformationService
					.findAddressById(personalInformation.getAddressId());
			request.setAttribute("address", address);
			String addressData = personalInformationService.findAddressByIdGetString(id);
			request.setAttribute("addressData", addressData);
		} else {
			request.setAttribute("url", "addPersonalInformation");
			request.setAttribute("msg", "添加");
		}

		return "backstage_managed/jsp/personal_Information/add_personal_Information";
	}

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				dateFormat, true));
	}

	@RequestMapping("/addPersonalInformation")
	public String addPersonalInformation(Address address,
			PersonalInformation personalInformation) {
		personalInformationService.insertPersonalInformation(address,
				personalInformation);
		return "backstage_managed/jsp/personal_Information/personal_Information_list";
	}

	@RequestMapping("/findAllPersonalInformation")
	@ResponseBody
	public String findAllPersonalInformation() {
		return personalInformationService.findAllPersonalInformation();

	}

	@RequestMapping("/updatePersonalInformationById")
	public String updatePersonalInformation(Address address,
			PersonalInformation personalInformation) throws Exception {
		addressService.updateAddressById(address);
		personalInformationService
				.updatePersonalInformationById(personalInformation);
		return "backstage_managed/jsp/personal_Information/personal_Information_list";
	}

	@RequestMapping("/deletePersonalInformationById")
	@ResponseBody
	public String deletePersonalInformationById(String id) {
		System.out.println("yyyyyy");
		personalInformationService.deletePersonalInformationById(id);
		return "success";
	}

}
