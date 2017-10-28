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
	public String getUserList(int pSize, int cPage, String keyword) {
		Pagination pagination = new Pagination();
		pagination.setKeyword(keyword);
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		return userService.userPagination(pagination);
	}

	@RequestMapping("/toLogin")
	public String toLogin(HttpServletRequest request, String type) {
		request.setAttribute("flag", "1");
		request.setAttribute("type", type);
		return "backstage_managed/jsp/user/login";

	}

	/**
	 * 跳转到用户验证
	 * 
	 * @return
	 */
	@RequestMapping("/toUserAccountAuthentication")
	public String toUserAccountAuthentication() {
		return "backstage_managed/jsp/user/userAccountAuthentication";
	}

	@RequestMapping("/login")
	public String login(HttpServletRequest request, User user1, String type) {
		User user = userService.checkLogin(user1);
		if (user != null) {
			request.getSession().setAttribute("user", user);
			// begin 判断登录类型
			//如果查询出来的用户RoleId是普通用户，跳转到主页去，不能登录看到后台管理页面
			if (type.equals("admin")
					&& !(user.getRoleId().equals(
							"e2ebe746b86b11e78d4f5254002ec43c"))) {
				return "redirect:/common/toFrame";

			} else {
				return "redirect:/common/toIndexModal";
			}
			// end
		}
		request.setAttribute("flag", "2");
		request.setAttribute("msg", "你输入的密码和账户名不匹配 ！");
		return "backstage_managed/jsp/user/login";
	}

	@RequestMapping("/toRegister")
	public String toRegister() {
		return "backstage_managed/jsp/user/register";
	}

	@RequestMapping("/register")
	public String register(User user, HttpServletRequest request) {
		String passwordMD5 = SecurityUtil.strToMD5(user.getPassword());
		user.setPassword(passwordMD5);
		user.setRoleId("e2ebe746b86b11e78d4f5254002ec43c");
		userService.addUser(user);
		request.getSession().setAttribute("user", user);
		return "redirect:/common/toIndexModal";
	}

	// 校验用户名是否存在
	@SuppressWarnings("unused")
	@RequestMapping("/usernameCheck")
	@ResponseBody
	public String usernameCheck(User user) {
		/**
		 * 调用service进行查询
		 */

		user = userService.findUsername(user.getUsername());
		if (user == null) {
			// 没有查询到该用户：用户名可以使用
			return "<font color='green'>用户名可以使用 ！</font>";

		}
		// 查询到该用户：用户名已存在
		return "<font color='red'>用户名已存在 ！</font>";
	}

	@RequestMapping("/findAllUser")
	@ResponseBody
	public String findAllUser() throws Exception {
		return userService.findAllUser();
	}

	// 后台删除用户
	@RequestMapping("/deleteUserById")
	@ResponseBody
	public String deleteUserById(String id) {
		userService.deleteUser(id);
		return "success";
	}

	// 进入后台修改页面
	@RequestMapping("/toAddUser")
	public String toAddUser(HttpServletRequest request, String id) {

		User user = userService.findUserById(id);

		request.setAttribute("user", user);

		return "backstage_managed/jsp/user/update_user";

	}

	// 后台修改用户
	@RequestMapping("/toAddUser2")
	public String toAddUser2(HttpServletRequest request, User user, Model model) {
		userService.updateUserById(user.getUsername(), user.getTelephone(),
				user.getId());
		return "backstage_managed/jsp/user/user_list.jsp";

	}

	@RequestMapping("/logout")
	@ResponseBody
	public String logout(HttpServletRequest request) {
		request.getSession().removeAttribute("user");
		return "1";
	}

	/**
	 * 跳转修改密码页面
	 * 
	 * @param user
	 * @return
	 */
	@RequestMapping("/toUpdatePassword")
	public String toUpdatePassword(HttpServletRequest request, String username) {
		System.out.println(username);

		User user = userService.findUserByusername(username);
		if (user != null) {
			request.setAttribute("user", user);
			return "/backstage_managed/jsp/user/userUpdatePassword";
		}
		request.setAttribute("flag", "2");
		request.setAttribute("msg", "验证失败，你输入的账户不存在！");
		return "/backstage_managed/jsp/user/userAccountAuthentication";
	}

	/**
	 * 修改密码
	 * 
	 * @param user
	 */
	@RequestMapping("/updatePassword")
	public String updatePassword(HttpServletRequest request, User user) {
		userService.updateUserById(user);
		request.setAttribute("flag", "2");
		request.setAttribute("msg", "密码修改成功！请重新登录");
		return "backstage_managed/jsp/user/login";
	}
}
