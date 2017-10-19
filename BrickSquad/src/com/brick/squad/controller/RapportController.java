package com.brick.squad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	}

