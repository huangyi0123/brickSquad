package com.brick.squad.controller;

import java.util.List;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.Region;
import com.brick.squad.service.RegionService;
import com.brick.squad.service.RelativesService;
import com.brick.squad.util.GridManagerList;
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
	public void getRegionList(Pagination pagination) {
		
		List<Region> regions=regionService.regionPagination(pagination);
		GridManagerList<Region> gridManagerList=new GridManagerList<Region>();
		gridManagerList.setStatus("success");
		gridManagerList.setData(regions);
	}
}
