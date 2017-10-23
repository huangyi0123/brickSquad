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

import com.brick.squad.pojo.ActivityRegistration;
import com.brick.squad.pojo.Business;
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
  public String toAddActivityRegistration(HttpServletRequest request, String id) {
	  if (id != null) {
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updateActivityRegistrationById");
			ActivityRegistration activityRegistration=activityRegistrationService.findActivityRegistrationById(id);
			request.setAttribute("activityRegistration", activityRegistration);
		} else {
			request.setAttribute("url", "insertActivityRegistration");
			request.setAttribute("msg", "添加");
		}
	return "backstage_managed/jsp/activityRegistration/add_activityRegistration";
	
}
  @InitBinder
	protected void initBinder(WebDataBinder binder) {
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}

  @RequestMapping("/insertActivityRegistration")
 
  public String insertActivityRegistration(ActivityRegistration activityRegistration ) {
	  /*activityRegistration.setRegistrationDate(new Date());*/
	  activityRegistrationService.insertActivityRegistration(activityRegistration);
	  return "backstage_managed/jsp/activityRegistration/activityRegistration_list";
	
}
  
  @RequestMapping("/updateActivityRegistrationById")
	public String updateActivityRegistrationById(ActivityRegistration activityRegistration ) {
		activityRegistrationService.updateActivityRegistrationById(activityRegistration);
		return "backstage_managed/jsp/activityRegistration/activityRegistration_list";
		
	}
  
    @RequestMapping("/deleteActivityRegistrationById")
	@ResponseBody
	public String deleteActivityRegistrationById(String id) {
		activityRegistrationService.deleteActivityRegistrationById(id);
		return "success";
				
	}
}
