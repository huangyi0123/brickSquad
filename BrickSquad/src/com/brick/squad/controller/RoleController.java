package com.brick.squad.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.Role;
import com.brick.squad.service.RoleService;
import com.brick.squad.util.Pagination;
@Controller
@RequestMapping("/role")
public class RoleController {
	@Autowired
	@Qualifier("roleService")
	private RoleService roleService;
	@RequestMapping("/toRoleList")
	public String toRoleList() {
		return "backstage_managed/jsp/role/role_list";
	}
	@RequestMapping("/getRoleList")
	@ResponseBody
	public String getRoleList(int pSize,int cPage,String keyword) {
		Pagination pagination=new Pagination();
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		return roleService.rolePagination(pagination);
	}
	@RequestMapping("/toAddRole")
	public String toAddRole(HttpServletRequest request,String id) throws Exception{
		if(id!=null){
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updateRole");
			Role role=roleService.findRole(id);
			request.setAttribute("role", role);
		}else{
			request.setAttribute("msg", "添加");
			request.setAttribute("url", "insertRole");
		}
		return "backstage_managed/jsp/role/add_role";
	}
	@RequestMapping("/insertRole")
	public String insertRole(Role role) throws Exception{
		roleService.insertRole(role);
		return "backstage_managed/jsp/role/role_list";
	}
	@RequestMapping("/deleteRole")
	@ResponseBody
	public String deleteRole(String id){
		roleService.deleteRole(id);
		return "success";
	}
	@RequestMapping("/updateRole")
	public String updateRole(Role role) throws Exception{
		roleService.updateRoleById(role);
		return "backstage_managed/jsp/role/role_list";
	}
}
