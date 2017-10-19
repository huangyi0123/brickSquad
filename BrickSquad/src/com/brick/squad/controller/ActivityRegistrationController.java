package com.brick.squad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.ActivityRegistration;
import com.brick.squad.service.ActivityRegistrationService;
import com.brick.squad.util.Pagination;

@Controller
@RequestMapping("/activityRegistration")
public class ActivityRegistrationController {
  @Autowired
  @Qualifier("activityRegistrationService")
  private ActivityRegistrationService activityRegistrationService;
  
  @RequestMapping("/toActivityRegistration")
  public String toActivityRegistration(){
	  return "backstage_managed/jsp/activityRegistration/activityRegistration_list";
  }
  
  @RequestMapping("/getActivityRegistrationList")
  @ResponseBody
  public String getActivityRegistrationList(int pSize,int cPage,String keyword) {
	Pagination pagination=new Pagination();
	pagination.setCurentPage(cPage);
	pagination.setPageSize(pSize);
	String data=activityRegistrationService.activityRegistrationPagination(pagination);
	return data;
}
  
  @RequestMapping("/toAddActivityRegistration")
  public String toAddActivityRegistration() {
	return "backstage_managed/jsp/activityRegistration/add_activityRegistration";
	
}
  @RequestMapping("/insertActivityRegistration")
  public String insertActivityRegistration(ActivityRegistration activityRegistration ) {
	  activityRegistrationService.insertActivityRegistration(activityRegistration);
	  return "backstage_managed/jsp/activityRegistration/activityRegistration_list";
	
}
}
