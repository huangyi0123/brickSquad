package com.brick.squad.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.brick.squad.pojo.Role;
import com.brick.squad.util.Pagination;

public interface RoleMapper {
	
	//增加用户
	public void addRole(@Param("id")String id,@Param("name")String name);
	//删除用户
	public void deleteRole(String id);
	//修改用户
	public void updateRole(@Param("id")String id,@Param("name")String name);
	//查询用户
	public Role findRole(String id);
	
	//新闻分页查询
	public List<Role> rolePagination(Pagination pagination);
	
	//新闻条数统计
	public int roleCount(Pagination pagination);
	/***
	 * 添加角色信息
	 * @param role
	 */
	public void insertRole(Role role);
	/***
	 * 查询所有角色名称
	 * @return
	 */
	public List<Role> findRoleAll();
	/***
	 * 根据ID修改角色信息
	 * @param role
	 */
	public void updateRoleById(Role role);
}
