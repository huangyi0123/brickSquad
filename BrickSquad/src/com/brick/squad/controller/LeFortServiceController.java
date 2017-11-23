package com.brick.squad.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.brick.squad.pojo.Activities;
import com.brick.squad.service.ActivitiesService;
import com.brick.squad.util.PageBeanUtil;

@Controller
@RequestMapping("/LeFortServiceController")
public class LeFortServiceController {
	@Autowired
	@Qualifier("activitiesService")
	private ActivitiesService activitiesService;
	/**官网乐堡服务
	 * @throws Exception */
	@RequestMapping("/serverWebsiteTemplate")
	public String serverWebsiteTemplate(String type,HttpServletRequest request,PageBeanUtil pageBean) throws Exception {
		request.setAttribute("type", type);
		int page=pageBean.getPage();
		String typeId=pageBean.getTypeId();
		PageBeanUtil<Activities> pageBeanUtil=activitiesService.findServerWebsiteTemplate(page, typeId);
		request.setAttribute("pageBean", pageBeanUtil);
		request.setAttribute("serverWebsiteTemplate", "serverWebsiteTemplate");
		return "offical_website/server-template";

	}

}
