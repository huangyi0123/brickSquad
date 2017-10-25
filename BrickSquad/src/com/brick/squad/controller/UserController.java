package com.brick.squad.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.Type;
import com.brick.squad.pojo.User;
import com.brick.squad.service.UserService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.SecurityUtil;
@Controller
@RequestMapping("/user")
public class UserController  {
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
	public String toLogin(User user,Model model,HttpServletRequest request) {
		
		 user=userService.checkLogin(user.getUsername(),user.getPassword());
		 
		 if(user!=null){
			 
	            model.addAttribute(user);
	            return "redirect:/ui/backstage_managed/jsp/frame.jsp";   
	        }
		 		request.setAttribute("msg", "你输入的密码和账户名不匹配 ！");
		 		
		 		//request.setAttribute("msg", "登录失败");
		 		return "backstage_managed/jsp/user/login";
	       
	    }
	
	
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

	
	//校验用户名是否存在
	@SuppressWarnings("unused")
	@RequestMapping("/usernameCheck")
	@ResponseBody
	public String usernameCheck(User user){
		 /**
         * 调用service进行查询
         */
		  
		user=userService.findUsername(user.getUsername());
         if (user==null) {
            //没有查询到该用户：用户名可以使用
        	return "<font color='green'>用户名可以使用 ！</font>";
        	
        }	
         	//查询到该用户：用户名已存在
        	return "<font color='red'>用户名已存在 ！</font>";
        }  
            
         
        	
      
		
		

	@RequestMapping("/findAllUser")
	@ResponseBody
	public String findAllUser() throws Exception{
		return userService.findAllUser();
	}
	
	//后台删除用户
	@RequestMapping("/deleteUserById")
	@ResponseBody
	public String deleteUserById(String id){
		userService.deleteUser(id);
		return "success";
	}
	//进入后台修改页面
	@RequestMapping("/toAddUser")
	public String toAddUser(HttpServletRequest request,String id) {
		
			User user = userService.findUserById(id);
			
			request.setAttribute("user",user);
			
			return "backstage_managed/jsp/user/update_user";

	}
	//后台修改用户
	@RequestMapping("/toAddUser2")
	public String toAddUser2(HttpServletRequest request,User user,Model model) {
		userService.updateUserById(user.getUsername(),user.getTelephone(),user.getId());	
		return "redirect:/ui/backstage_managed/jsp/user/user_list.jsp";

}
}
	
	
