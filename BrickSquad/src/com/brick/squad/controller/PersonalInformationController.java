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

import com.brick.squad.expand.AddressAndPersonaInformationExpand;
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

	@RequestMapping("/toUpdatePersonalInformation")
	public String toUpdatePersonalInformation(HttpServletRequest request,
			String id) throws Exception {
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
			String allRegionResultById = addressService.getAllRegion(address);
			request.setAttribute("allRegionResultById", allRegionResultById);

		} else {
			return "backstage_managed/jsp/personal_Information/add_personal_Information";
		}

		return "backstage_managed/jsp/personal_Information/update_personal_Information";
	}

	@RequestMapping("/toAddPersonalInformation")
	public String toAddPersonalInformation(HttpServletRequest request)
			throws Exception {

		String provinceData = personalInformationService.findRegionsByLevel();
		request.setAttribute("provinceData", provinceData);
		String nationData = personalInformationService.findTypesByParentId();
		request.setAttribute("nationData", nationData);
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
/**
 * 修改PersonalInformation
 * @param addressAndPersonaInformationExpand 扩展类
 * @return 
 * @throws Exception
 */
	@RequestMapping("/updatePersonalInformationById")
	public String updatePersonalInformation(
			AddressAndPersonaInformationExpand addressAndPersonaInformationExpand)
			throws Exception {
		//先修改地址信息
		addressService.updateAddressById(addressAndPersonaInformationExpand
				.getAddress());
		
		personalInformationService
				.updatePersonalInformationById(addressAndPersonaInformationExpand
						.getPersonalInformation());
		return "backstage_managed/jsp/personal_Information/personal_Information_list";
	}

	@RequestMapping("/deletePersonalInformationById")
	@ResponseBody
	public String deletePersonalInformationById(String id) {
		personalInformationService.deletePersonalInformationById(id);
		return "success";
	}

}
