package com.brick.squad.service.impl;

import java.util.List;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.mapper.RoleMapper;
import com.brick.squad.pojo.Role;
import com.brick.squad.service.RoleService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Util;
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
	
	public  Role findRole(String id){
		return roleMapper.findRole(id);
		
	}
	
	public  String rolePagination(Pagination pagination){
		List<Role> roles= roleMapper.rolePagination(pagination);
		int row=roleMapper.roleCount();
		Util<Role> util=new Util<Role>();
		String data=util.SplitPage(roles,row);
		return data;
		
	}
	public int roleCount(){
		int count=roleMapper.roleCount();
		return count;
	}
	/***
	 * 添加角色信息
	 * @param role
	 */
	@Override
	public void insertRole(Role role) throws Exception {
		roleMapper.insertRole(role);
	}
	/***
	 * 查询所有角色名称
	 * @return
	 */
	@Override
	public String findRoleAll() throws Exception {
		List<Role> roles=roleMapper.findRoleAll();
		JSONArray jsonArray=new JSONArray();
		String data=jsonArray.fromObject(roles).toString();
		return data;
	}
	/***
	 * 根据ID修改角色信息
	 * @param role
	 */
	@Override
	public void updateRoleById(Role role) throws Exception {
		roleMapper.updateRoleById(role);
	}
	
	
}
