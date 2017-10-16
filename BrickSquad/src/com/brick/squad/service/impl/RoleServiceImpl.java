package com.brick.squad.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.mapper.RoleMapper;
import com.brick.squad.pojo.Role;
import com.brick.squad.service.RoleService;
/**
 * 
 * @author Luyujing
 *
 * 角色表 调用增删改查方法
 */
public class RoleServiceImpl implements RoleService{
	@Autowired
	@Qualifier("roleMapper")
	private RoleMapper roleMapper;
	
	public void addRole(String id,String name){
		roleMapper.addRole(id,name);
		
	}
	
	public void deleteRole(String id){
		roleMapper.deleteRole(id);
		
	}
	
	public void updateRole(String id,String name){
		roleMapper.updateRole(id,name);
		
	}
	
	public  List<Role> findRole(String id){
		return roleMapper.findRole(id);
		
	}
	
	
}
