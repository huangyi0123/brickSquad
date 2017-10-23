package com.brick.squad.controller;

import java.util.Random;

import javax.enterprise.inject.New;
import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.Region;
import com.brick.squad.pojo.Type;
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

	@RequestMapping("/toAddRegion")
	public String toAddRegion(HttpServletRequest request, String id) {
		if (id != null) {
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updateRegion");
			Region region = regionService.findRegionById(id);
			request.setAttribute("region", region);
		} else {
			request.setAttribute("url", "insertRegion");
			request.setAttribute("msg", "添加");
		}
		return "backstage_managed/jsp/region/add_region";
	}
	
	@RequestMapping("findAllRegion")
	@ResponseBody
	public String findAllRegion(){
		
		return regionService.findAllRegion();
	}

	@RequestMapping("/getRegionList")
	@ResponseBody
	public String getRegionList(int pSize, int cPage, String keyword) {
		Pagination pagination = new Pagination();
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		return regionService.regionPagination(pagination);
	}

	@RequestMapping("/findRegionByLevel")
	@ResponseBody
	public String findRegionByLevel(int level) {
		return regionService.findRegionByLevel(level);
	}

	@RequestMapping("/updateRegion")
	public String updateRegion(Region region) {
		regionService.updateRegion(region);
		return "backstage_managed/jsp/region/region_list";
	}
@RequestMapping("/findRegionById")
@ResponseBody
public String findRegionById(String id){
	Region region =regionService.findRegionById(id);
	JSONObject jsonObject =new JSONObject();
	String regiondata =  jsonObject.fromObject(region).toString();
	return regiondata;
}
	@RequestMapping("/findRegionByParentId")
	@ResponseBody
	public String findRegionByParentId(String parantId) {
		return regionService.findRegionByParentId(parantId);
	}

	@RequestMapping("/insertRegion")
	public String insertRegion(Region region) {
	
		 Random random = new Random(); 
		 region.setId(random.nextInt(100000) +"");
		 
	/*	StringBuffer stringBuffer = new StringBuffer();
		for (int i = 0; i < 1000; i++) {
			stringBuffer.append(i);
		}
		region.setId("13063310" + stringBuffer.toString());*/
		region.setPerantId("1");
		regionService.insertRegionById(region);
		return "backstage_managed/jsp/region/region_list";
	}

	@RequestMapping(value = "/deleteRegionById")
	@ResponseBody
	public String deleteRegionById(String id) {
		regionService.deleteRegionById(id);
		return "success";
	}
}
