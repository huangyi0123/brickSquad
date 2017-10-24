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
import com.brick.squad.service.MedicalService;
import com.brick.squad.util.Pagination;

@RequestMapping("/medical")
@Controller
public class MedicalController {
	@Autowired
	@Qualifier("medicalService")
	private MedicalService medicalService;

	@RequestMapping("/toMedicalList")
	public String toMedicalList() {
		return "backstage_managed/jsp/medical/medical_list";
	}

	@RequestMapping("/getMedicalList")
	@ResponseBody
	public String getMedicalList(int pSize, int cPage, String keyword) {
		Pagination pagination = new Pagination();
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);

		return medicalService.medicalPagination(pagination);

	}

	@RequestMapping("/toAddMedical")
	public String toAddMedical(HttpServletRequest request, String id) {
		//获得全部的personalinformattion页面填写身份证信息用
		String allPersonalInformationData =medicalService.findAllPersonalInformationGetIdAndIdCardAndName();
		request.setAttribute("allPersonalInformationData", allPersonalInformationData);
		if (id != null) {
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updateMedicalById");
			Medical medical = medicalService.findMedicalById(id);
			request.setAttribute("medical", medical);
		} else {
			request.setAttribute("url", "addMedical");
			request.setAttribute("msg", "添加");
		}
		return "backstage_managed/jsp/medical/add_medical";
	}

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				dateFormat, true));
	}
	@RequestMapping("/addMedical")
	public String addMedical(Medical medical) {
		System.out.println(medical.getTypeId()+"99");
		medicalService.insertMedical(medical);
		return "backstage_managed/jsp/medical/medical_list";
	}

	@RequestMapping("/deleteMedicalById")
	@ResponseBody
	public String deleteMedicalById(String id) {
		medicalService.deleteMedicalById(id);
		return "success";
	}

	@RequestMapping("/updateMedicalById")

	public String updateMedicalById(Medical medical) {
		medicalService.updateMedicalById(medical);
		return "backstage_managed/jsp/medical/medical_list";
	}
}
