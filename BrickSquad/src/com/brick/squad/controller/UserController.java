package com.brick.squad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

 
import com.brick.squad.service.UserService;
import com.brick.squad.util.Pagination;
@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	@RequestMapping("/toUserList")
	public String toUserList() {
		return "backstage_managed/jsp/user/user_list";
	}
	@RequestMapping("/getUserList")
	@ResponseBody
	public String getUserList(int pSize,int cPage,String keyword) {
		Pagination pagination=new Pagination();
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		return userService.userPagination(pagination);
	}
}
