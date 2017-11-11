package com.brick.squad.controller;

import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.Rated;
import com.brick.squad.service.RatedService;
import com.brick.squad.util.Pagination;

@Controller
@RequestMapping("/rated")
public class RatedController {
	@Autowired
	@Qualifier("ratedService")
	private RatedService ratedService;

	@RequestMapping("/toRatedList")
	public String toRatedList() {
		return "backstage_managed/jsp/rated/rated_list";
	}

	@RequestMapping("/toAddRated")
	public String toAddRated(HttpServletRequest request, String id) {
		if (id != null) {
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updateRatedById");
			Rated rated = ratedService.findRatedById(id);
			request.setAttribute("rated", rated);
		} else {
			request.setAttribute("url", "addRated");
			request.setAttribute("msg", "添加");
		}
		return "backstage_managed/jsp/rated/add_rated";
	}

	@RequestMapping("/getRatedList")
	@ResponseBody
	public String getRatedList(int pSize, int cPage, String keyword) {
		Pagination pagination = new Pagination();
		pagination.setKeyword(keyword);
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		return ratedService.ratedPagination(pagination);

	}

	@RequestMapping("/findRatedById")
	@ResponseBody
	public String findRatedById(String id) {
		Rated rated = ratedService
				.findRatedById("57d3413eb2dc11e78d4f5254002ec43c");
		JSONObject jsonObject = JSONObject.fromObject(rated);
		String dataString = jsonObject.toString();
		return dataString;
	}

	@RequestMapping("/findAllRated")
	@ResponseBody
	public String findAllRated() {
		return ratedService.findAllRated();
	}

	@RequestMapping("/insertRated")
	public void insertRated() {
		for (int i = 0; i < 10; i++) {
			Rated rated = new Rated();
			rated.setOrderId(UUID.randomUUID().toString());
			rated.setRatedDate(new Date());
			rated.setCentent("测试" + UUID.randomUUID().toString());
			ratedService.insertRated(rated);
		}

	}

	@RequestMapping("/addRated")
	public String addRated(Rated rated) {
		ratedService.insertRated(rated);
		return "backstage_managed/jsp/rated/rated_list";

	}

	@RequestMapping("/deleteRatedById")
	@ResponseBody
	public String deleteRatedById(String id) {
		ratedService.deleteRatedById(id);
		return "success";
	}

	@RequestMapping("/updateRatedById")
	public String updateRatedById(Rated rated) {
		ratedService.updateRatedCententById(rated);
		return "backstage_managed/jsp/rated/rated_list";
	}
}
