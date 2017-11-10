package com.brick.squad.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.ActivityRegistration;
import com.brick.squad.pojo.HealthRecords;
import com.brick.squad.pojo.Rapport;
import com.brick.squad.pojo.User;
import com.brick.squad.service.GuidanceService;
import com.brick.squad.service.HealthRecordsService;
import com.brick.squad.service.TypeService;
import com.brick.squad.service.UserService;
import com.brick.squad.util.Pagination;

@RequestMapping("/healthRecords")
@Controller
public class HealthRecordsController {
	@Autowired
	@Qualifier("healthRecordsService")
	private HealthRecordsService healthRecordsService;
	@Autowired
	@Qualifier("typeService")
	private TypeService typeService;
	@Autowired
	@Qualifier("guidanceService")
	private GuidanceService guidanceService;
	@Autowired
	@Qualifier("userService")
	private UserService userService;

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
	public String getHealthRecordsList(int pSize, int cPage, String keyword,
			HttpServletRequest request) {
		Pagination pagination = new Pagination();
		pagination.setKeyword(keyword);
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		return healthRecordsService.healthRecordsPagination(pagination);

	}

	@RequestMapping("/toAddHealthRecords")
	public String toAddHealthRecords(HttpServletRequest request, String id)
			throws Exception {
		// 得到数据库中查询的身份证 姓名 id的json数据用于页面显示出来
		String allPersonalInformationdata = guidanceService
				.findPerIdAndIdCard();
		request.setAttribute("allPersonalInformationdata",
				allPersonalInformationdata);
		// 通过父ID查询疾病类型
		String data = typeService.findTypeByParentId("jibingleixin");
		// System.out.println(data);
		request.setAttribute("typeData", data);
		if (id != null) {
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updateHealthRecordsById");
			HealthRecords healthRecords = healthRecordsService
					.findHealthRecordsById(id);
			request.setAttribute("healthRecords", healthRecords);

			System.out.println(healthRecords + "111111111111111111111111111");
		} else {
			request.setAttribute("url", "insertHealthRecords");
			request.setAttribute("msg", "添加");
		}
		return "backstage_managed/jsp/healthRecords/add_healthRecords";
	}

	@RequestMapping("/insertHealthRecords")
	public String insertHealthRecords(@Validated HealthRecords healthRecords,
			BindingResult result, HttpServletRequest request) {
		if (result.hasErrors()) {
			System.out.println(healthRecords.getIdCard()
					+ "11111111111111111111");
			List<ObjectError> errors = result.getAllErrors();
			request.setAttribute("errors", errors);
			request.setAttribute("url", "insertHealthRecords");
			request.setAttribute("msg", "添加");
			return "backstage_managed/jsp/healthRecords/add_healthRecords";

		}
		healthRecords.setUserId(request.getSession().getAttribute("userId")
				.toString());
		healthRecordsService.insertHealthRecords(healthRecords);
		return "backstage_managed/jsp/healthRecords/healthRecords_list";

	}

	@RequestMapping("/findTypeByParentId")
	@ResponseBody
	public String findTypeByParentId(String parentId) {
		return typeService.findTypeByParentId(parentId);
	}

	@RequestMapping("/updateHealthRecordsById")
	public String updateHealthRecordsById(HealthRecords healthRecords,
			HttpServletRequest request) {
		healthRecords.setUserId(request.getSession().getAttribute("userId")
				.toString());
		healthRecordsService.updateHealthRecordsById(healthRecords);
		return "backstage_managed/jsp/healthRecords/healthRecords_list";
	}

	// 查看详情
	@RequestMapping("/serachHealthRecords")
	public String serachHealthRecords(HttpServletRequest request, String id) {
		HealthRecords healthRecords = healthRecordsService
				.findHealthRecordsById(id);
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		request.setAttribute("registrDate",
				df.format(healthRecords.getRegistrDate()));
		request.setAttribute("healthRecords", healthRecords);
		return "backstage_managed/jsp/healthRecords/search_healthRecords";

	}
}
