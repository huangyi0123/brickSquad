package com.brick.squad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
}
