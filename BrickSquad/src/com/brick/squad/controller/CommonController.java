package com.brick.squad.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/common")
public class CommonController {
	@RequestMapping("/toFrame")
	public String toFrame() {
		return "backstage_managed/jsp/frame";
	}
}
