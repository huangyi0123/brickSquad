package com.brick.squad.controller;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.Region;
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
	public String toAddRegion() {
		return "backstage_managed/jsp/region/add_region";
	}
	@RequestMapping("/getRegionList")
	@ResponseBody
	public String getRegionList(int pSize,int cPage,String keyword) {
		Pagination pagination=new Pagination();
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		return regionService.regionPagination(pagination);
	}
	@RequestMapping("/insertRegion")
	public String insertRegion(Region region){
		Random random = new Random();
		region.setId(random.nextInt(10000)+"");
	/*	StringBuffer stringBuffer = new StringBuffer();
		for(int i = 0; i<100;i++){
			stringBuffer.append(i);
		}
		random.nextInt(100);
		region.setId(" "+stringBuffer.toString());*/
		region.setPerantId("1");
		regionService.insertRegionById(region);
		return "backstage_managed/jsp/region/region_list";
	}
	@RequestMapping(value="/deleteRegionById")
	@ResponseBody
	public String deleteRegionById(String id){
		regionService.deleteRegionById(id);
		return "success";
	}
}
