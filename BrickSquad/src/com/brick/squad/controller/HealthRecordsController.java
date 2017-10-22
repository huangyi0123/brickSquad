package com.brick.squad.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.ActivityRegistration;
import com.brick.squad.pojo.HealthRecords;
import com.brick.squad.pojo.Rapport;
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

	@RequestMapping("/deleteHealthRecordsById")
	@ResponseBody
	public String deleteHealthRecordsById(String id) {
		healthRecordsService.deleteHealthRecordsById(id);
		return "success";
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
	public String toAddHealthRecords(HttpServletRequest request, String id)
			throws Exception {
		if (id != null) {
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updateHealthRecordsById");
			HealthRecords healthRecords = healthRecordsService
					.findHealthRecordsById(id);
			request.setAttribute("healthRecords", healthRecords);
		} else {
			request.setAttribute("url", "insertHealthRecords");
			request.setAttribute("msg", "添加");
		}
		return "backstage_managed/jsp/healthRecords/add_healthRecords";
	}

	@RequestMapping("/insertHealthRecords")
	public String insertHealthRecords(HealthRecords healthRecords) {
		healthRecordsService.insertHealthRecords(healthRecords);
		return "backstage_managed/jsp/healthRecords/healthRecords_list";

	}

	@RequestMapping("/updateHealthRecordsById")
	public String updateHealthRecordsById(HealthRecords healthRecords) {
		healthRecordsService.updateHealthRecordsById(healthRecords);
		return "backstage_managed/jsp/healthRecords/healthRecords_list";
	}
}
