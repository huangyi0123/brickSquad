package com.brick.squad.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/LeFortServiceController")
public class LeFortServiceController {
	
	/**官网乐堡服务*/
	@RequestMapping("/serverWebsiteTemplate")
	public String serverWebsiteTemplate(String type,HttpServletRequest request) {
		request.setAttribute("type", type);
		return "offical_website/server-template";

	}

}
