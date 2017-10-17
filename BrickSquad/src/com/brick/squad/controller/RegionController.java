package com.brick.squad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.service.RegionService;
import com.brick.squad.util.Pagination;

@Controller
@RequestMapping("/region")
public class RegionController {
	@Autowired
	@Qualifier("regionService")
	private RegionService regionService;
	@RequestMapping("/toRegionList")
	public String toRegionList() {
		return "backstage_managed/jsp/region/region_list";
	}
	@RequestMapping("/getRegionList")
	@ResponseBody
	public String getRegionList(int pSize,int cPage,String keyword) {
		Pagination pagination=new Pagination();
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		return regionService.regionPagination(pagination);
	}
}
