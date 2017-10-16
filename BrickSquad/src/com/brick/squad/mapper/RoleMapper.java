package com.brick.squad.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.brick.squad.pojo.Role;

public interface RoleMapper {
	
	//增加用户
	public void addRole(@Param("id")String id,@Param("name")String name);
	//删除用户
	public void deleteRole(String id);
	//修改用户
	public void updateRole(@Param("id")String id,@Param("name")String name);
	//查询用户
	public List<Role> findRole(String id);
	
}