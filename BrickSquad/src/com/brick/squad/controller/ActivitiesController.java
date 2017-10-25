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
			return  activitiesService.activitiesPagination(pagination);}
		
		
		
		
		@RequestMapping("/toAddActivities")
		public String toAddActivities(){
			return "backstage_managed/jsp/activities/add_activities";
			
		}
		@RequestMapping("/addActivities")
		public String addActivities(Activities activities) throws Exception{
			activitiesService.insertActivitiesById(activities);
			return "backstage_managed/jsp/activities/activities_list";
		}
		
		@InitBinder
		protected void initBinder(WebDataBinder binder) {
		    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
		}
		
		
		@RequestMapping("/deleteActivitiesById")
		public String deleteActivitiesById(String id) throws Exception{
			activitiesService.deleteActivitiesById(id);
			return "success";
	   	}

}