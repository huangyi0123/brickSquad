package com.brick.squad.controller;

import java.util.List;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.Medical;
import com.brick.squad.service.MedicalService;
import com.brick.squad.util.GridManagerList;
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
	public String getMedicalList(int pSize,int cPage,String keyword) {
		Pagination pagination=new Pagination();
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		
		return medicalService.medicalPagination(pagination);

	}

}
