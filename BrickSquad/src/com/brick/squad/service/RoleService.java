package com.brick.squad.service;


import java.util.List;

import com.brick.squad.pojo.Role;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;

public interface RoleService {
	public void addRole(String id, String name);
	public void deleteRole(String id);
	public void updateRole(String id, String name);
	public Role findRole(String id);
	public String rolePagination(Pagination pagination);
	//查询所有role表中的信息
	public String findAllRole();
	//public int roleCount();
	/***
	 * 添加角色信息
	 * @param role
	 */
	public void insertRole(Role role)throws Exception;
	/***
	 * 查询所有角色名称
	 * @return
	 */
	public String findRoleAll()throws Exception;
	/***
	 * 根据ID修改角色信息
	 * @param role
	 */
	public void updateRoleById(Role role)throws Exception;
	
}
