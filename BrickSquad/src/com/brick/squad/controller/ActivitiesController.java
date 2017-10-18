package com.brick.squad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.Activities;
import com.brick.squad.service.ActivitiesService;
import com.brick.squad.util.Pagination;

@RequestMapping("/activities")
@Controller
public class ActivitiesController {
	
		@Autowired
		@Qualifier("activitiesService")
		private ActivitiesService activitiesService;
		
		@RequestMapping("/toActivitiesList")
		public String toActivitiesList(){
			return "backstage_managed/jsp/activities/activities_list";
			
		}
		@RequestMapping("/getActivitiesList")
		@ResponseBody
		public String getActivitiesList(int pSize,int cPage,String keyword){
			Pagination pagination=new Pagination();
			pagination.setCurentPage(cPage);
			pagination.setPageSize(pSize);
			return  activitiesService.activitiesPagination(pagination);
}
}