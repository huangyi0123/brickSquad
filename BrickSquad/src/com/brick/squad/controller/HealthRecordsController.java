package com.brick.squad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.service.HealthRecordsService;
import com.brick.squad.util.Pagination;

@RequestMapping("/healthRecords")
@Controller
public class HealthRecordsController {
	@Autowired
	@Qualifier("healthRecordsService")
	private HealthRecordsService healthRecordsService;

	@RequestMapping("/toHealthRecordsList")
	public String toHealthRecordsList() {
		return "backstage_managed/jsp/healthRecords/healthRecords_list";
	}

	@RequestMapping("/getHealthRecordsList")
	@ResponseBody
	public String getHealthRecordsList(int pSize, int cPage, String keyword) {
		Pagination pagination = new Pagination();
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		return healthRecordsService.healthRecordsPagination(pagination);

	}
	
	
	@RequestMapping("/toAddHealthRecords")
	public String toHealthRecords() {
		return "backstage_managed/jsp/healthRecords/add_healthRecords";
	}
}
