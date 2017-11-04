package com.brick.squad.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.brick.squad.pojo.Type;
import com.brick.squad.pojo.User;
import com.brick.squad.service.RoleService;
import com.brick.squad.service.TypeService;
import com.brick.squad.service.UserService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.SecurityUtil;
import com.brick.squad.util.Select;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	@Autowired
	@Qualifier("typeService")
	private TypeService typeService;
	@Autowired
	@Qualifier("roleService")
	private RoleService roleService;
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
			// 如果查询出来的用户RoleId是普通用户，跳转到主页去，不能登录看到后台管理页面
			if (type.equals("admin")
					&& !(user.getRoleId()
							.equals("e2ebe746b86b11e78d4f5254002ec43c"))) {
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
		user.setBranchId("594cf09abc4c11e7aca65254002ec43c");
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

	@RequestMapping("/findUserByBranch")
	@ResponseBody
	public String findUserByBranch(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		String data = userService.findUserByBranchId(user.getBranchId());
		return data;
	}
	/**
	 * 跳转到添加页面
	 */
	@RequestMapping("/toJumpUser")
	public String toJumpUser( HttpServletRequest request){

		String branch =typeService.findTypeByParentId("594cf09abc4c11e7aca65254002ec43c");
		request.setAttribute("branch", branch);
		String role = roleService.findAllRole();
		request.setAttribute("role", role);
		return "backstage_managed/jsp/user/AddJumpUser";
	}
	/**
	 * 添加user信息
	 * @param request
	 * @return
	 */
	@RequestMapping("/toAddJumpUser")
	public String toAddJumpUser(@Validated User user,BindingResult bindingResult,HttpServletRequest request){
		if(bindingResult.hasErrors()){
			List<ObjectError> errors = bindingResult.getAllErrors();
			request.setAttribute("errors", errors);
			return "backstage_managed/jsp/user/AddJumpUser";
		}
		user.setPassword(SecurityUtil.strToMD5(user.getPassword()));
		userService.addUser(user);
		return "backstage_managed/jsp/user/user_list";
	}
	/**
	 * 用户修改头像
	 * 
	 * @return
	 */
	@RequestMapping("/userUpdateUserPicPath")
	@ResponseBody
	public String userUpdateUserPicPath(MultipartFile userPic,
			HttpServletRequest request) {
		// 图片大小超过5M，不能上传
		if (userPic.getSize() < 5242880) {
			if (userPic != null) {
				// 获取图片要保存的到的服务器路径
				String realPath = "resource/image/user/";
				String path = request.getSession().getServletContext()
						.getRealPath(realPath);
				// 获取当前文件名
				String filName = userPic.getOriginalFilename();
				// 获取当前文件的后缀名
				String fileSuffixName = filName.substring(filName
						.lastIndexOf("."));
				// 如果后缀名为png\jpg\gif\icon\jpeg,才允许上传
				if (fileSuffixName.equals(".JPG")
						|| fileSuffixName.equals(".PNG")
						|| fileSuffixName.equals(".png")
						|| fileSuffixName.equals(".jpg")
						|| fileSuffixName.equals(".jpeg")
						|| fileSuffixName.equals(".gif")) {
					// 获取当前登录的用户session
					User user = (User) request.getSession()
							.getAttribute("user");
					if (user != null) {
						// 给文件重新命名,当前用户ID+文件后缀名
						String fileNewName = user.getId() + fileSuffixName;

						//  创建文件类型对象: 
						File file = new File(path, fileNewName);
						if (!file.exists()) {
							file.mkdirs();
						}
						try {
							userPic.transferTo(file);

							// 取得数据库存的路径
							String databaseuserPicPath = realPath + fileNewName;
							// 上传成功后，将路径保存到数据库中
							user.setUserPicPath(databaseuserPicPath);
							if (user.getUserPicPath() != null) {
								userService.updateUserUserPicPathById(user);
							}

							request.getSession().setAttribute("user", user);
						} catch (IllegalStateException | IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					} else {
						return "getUserError";
					}
				} else {
					return "fileSuffixNameError";

				}

			} else {
				return "userPicNUllError";
			}
		} else {
			return "fileSizeError";
		}

		return "suc";
		/* return "redirect:/common/toPersonal"; */
	}
	
}
