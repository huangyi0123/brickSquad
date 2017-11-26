package com.brick.squad.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;
import net.sf.json.JsonConfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.expand.MedicalExpand;
import com.brick.squad.pojo.Activities;
import com.brick.squad.pojo.ActivityRegistration;
import com.brick.squad.pojo.News;
import com.brick.squad.pojo.User;
import com.brick.squad.service.ActivitiesService;
import com.brick.squad.service.ActivityRegistrationService;
import com.brick.squad.service.MedicalService;
import com.brick.squad.service.NewsService;
import com.brick.squad.util.JsonDateValueProcessor;
import com.brick.squad.util.PageBeanUtil;

@Controller
@RequestMapping("/LeFortServiceController")
public class LeFortServiceController {
	@Autowired
	@Qualifier("activitiesService")
	private ActivitiesService activitiesService;
	@Autowired
	@Qualifier("activityRegistrationService")
	private ActivityRegistrationService activityRegistrationService;
	@Autowired
	@Qualifier("medicalService")
	private MedicalService medicalService;
	@Autowired
	@Qualifier("newsService")
	private NewsService newsService;
	/**官网乐堡服务
	 * @throws Exception */
	@RequestMapping("/serverWebsiteTemplate")
	public String serverWebsiteTemplate(String type,HttpServletRequest request,PageBeanUtil pageBean) throws Exception {
		type = "aboutus-intro";
		request.setAttribute("type", type);
		//体检预约
		int page=pageBean.getPage();
		String typeId=pageBean.getTypeId();
		PageBeanUtil<Activities> pageBeanUtil=activitiesService.findServerWebsiteTemplate(page, typeId);
		request.setAttribute("pageBean", pageBeanUtil);
		request.setAttribute("serverWebsiteTemplate", "serverWebsiteTemplate");
		//生活助手	
		PageBeanUtil pageBean3=newsService.findNewsLeBaoServer(page);
		request.setAttribute("pageBean3", pageBean3);
		
		//健康协助
		User user=(User) request.getSession().getAttribute("user");
		if(user==null){
		}else{
		String pId=user.getId();
		PageBeanUtil<MedicalExpand> pageBeanUtil2=medicalService.findMedicalByUser(page, pId);
		request.setAttribute("pageBean1", pageBeanUtil2);
		}
		return "offical_website/server-template";
	}
	
	
	
	
	
	
	
	@RequestMapping("/findInformation")
	@ResponseBody
	public String findInformation(String type,HttpServletRequest request,String id) throws Exception {
		request.setAttribute("type", type);
		Activities activities=activitiesService.findActivitiesById(id);

		JsonConfig jsonConfig = new JsonConfig();
		jsonConfig.registerJsonValueProcessor(Date.class,
				new JsonDateValueProcessor());
		JSONArray jsonArray=new JSONArray();
		String data=jsonArray.fromObject(activities,jsonConfig).toString();
		return data;
	}
	
	
	
	@RequestMapping("/findViewInformation")
	@ResponseBody
	public String findViewInformation(String type,HttpServletRequest request,String id) throws Exception {
		request.setAttribute("type", type);
		MedicalExpand medicalExpand=medicalService.findViewInformation(id);
		JsonConfig jsonConfig = new JsonConfig();
		jsonConfig.registerJsonValueProcessor(Date.class,
				new JsonDateValueProcessor());
		JSONArray jsonArray=new JSONArray();
		String data=jsonArray.fromObject(medicalExpand,jsonConfig).toString();
		return data;
	}
	
	
	/***体检预约信息添加*/
	@RequestMapping("/insertArtivitesInformation")
	@ResponseBody
	public String insertArtivitesInformation(HttpServletRequest request,  String activitiesId){
		ActivityRegistration activityRegistration=new ActivityRegistration();
		User user=(User) request.getSession().getAttribute("user");
		activityRegistration.setPerId(user.getId());
		activityRegistration.setActivitiesId(activitiesId);
		activityRegistration.setRegistrationDate(new Date());
		activityRegistrationService.insertActivityRegistration(activityRegistration);
		String data="success";
		return data;
	}

}
