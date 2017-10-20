package com.brick.squad.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
			pagination.setCurentPage(cPage);
			pagination.setPageSize(pSize);
			return rapportService.rapportPagination(pagination);
		}
		@RequestMapping("/toAddRapport")
		public String toAddRapport() {
			return "backstage_managed/jsp/rapport/add_rapport";
		}
		@InitBinder
		protected void initBinder(WebDataBinder binder) {
		    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
		}
		@RequestMapping("/insertRapport")
		public String insertRapport(Rapport rapport) throws Exception{
			rapportService.insertRapport(rapport);
			return "backstage_managed/jsp/rapport/rapport_list";
		}
		
	}

