package com.brick.squad.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;



import com.brick.squad.pojo.User;
import com.brick.squad.service.UserService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.SecurityUtil;
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
	@RequestMapping("/toLogin")
	public String toLogin(User user,Model model) {
		System.out.println("11111111111111");
		 user=userService.checkLogin(user.getUsername(), user.getPassword());
		 if(user!=null){
	            model.addAttribute(user);
	            return "redirect:/ui/backstage_managed/jsp/frame.jsp";// 路径 WEB-INF/pages/welcome.jsp            
	        }
	        return "fail";
	    }
		//return "redirect:/ui/backstage_managed/jsp/user/login.jsp";
	
	
	@RequestMapping("/toRegister")
	public String toRegister() {
		return "redirect:/ui/backstage_managed/jsp/user/register.jsp";
	}
	@RequestMapping("/register")
	public String register(User user,HttpServletRequest httpServletRequest){
		String passwordMD5 =  SecurityUtil.strToMD5(user.getPassword());
		user.setPassword(passwordMD5);
		user.setRoleId("1");
		userService.addUser(user);
		return "redirect:/ui/backstage_managed/jsp/frame.jsp";
	}
}
