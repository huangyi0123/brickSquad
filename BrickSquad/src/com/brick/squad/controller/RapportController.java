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

import com.brick.squad.expand.RapportExpand;
import com.brick.squad.pojo.Rapport;
import com.brick.squad.service.RapportService;
import com.brick.squad.util.Pagination;

@Controller
@RequestMapping("/rapport")
public class RapportController {
	@Autowired
	@Qualifier("rapportService")
	private RapportService rapportService;

	@RequestMapping("/toRapportList")
	public String toRegionList() {
		return "backstage_managed/jsp/rapport/rapport_list";
	}

	@RequestMapping("/getRapportList")
	@ResponseBody
	public String getRegionList(int pSize, int cPage, String keyword)
			throws Exception {
		Pagination pagination = new Pagination();
		pagination.setKeyword(keyword);
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		return rapportService.rapportPagination(pagination);
	}

	@RequestMapping("/toAddRapport")
	public String toAddRapport(HttpServletRequest request, String id)
			throws Exception {
		if (id != null) {
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updateRapportById");
			Rapport rapport = rapportService.findRapportById(id);
			request.setAttribute("rapport", rapport);
		} else {
			request.setAttribute("url", "insertRapport");
			request.setAttribute("msg", "添加");
		}
		return "backstage_managed/jsp/rapport/add_rapport";
	}

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				dateFormat, true));
	}

	@RequestMapping("/insertRapport")
	public String insertRapport(Rapport rapport) throws Exception {
		rapportService.insertRapport(rapport);
		return "backstage_managed/jsp/rapport/rapport_list";
	}

	@RequestMapping("/findAllUserAndPersonalInformation")
	@ResponseBody
	public String findAllUserAndPersonalInformation() {
		return rapportService.findAllUserAndPersonalInformation();
	}

	@RequestMapping("/deleteRapportById")
	@ResponseBody
	public String deleteRapportById(String id) throws Exception {
		rapportService.deleteRapportById(id);
		return "success";
	}

	@RequestMapping("/updateRapportById")
	public String updateRapportById(Rapport rapport) throws Exception {
		rapportService.updateRapportByID(rapport);
		return "backstage_managed/jsp/rapport/rapport_list";
	}

	@RequestMapping("/findRapportById")
	public String findRapportById(HttpServletRequest request, String id)
			throws Exception {
		RapportExpand rapportExpand = rapportService
				.findRapportAndUserAndPersonalInformation(id);
		request.setAttribute("rapportExpand", rapportExpand);
		return "backstage_managed/jsp/rapport/search_rapport";
	}
}
