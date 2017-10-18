package com.brick.squad.service;

import java.util.List;

import com.brick.squad.pojo.Role;
import com.brick.squad.util.Pagination;

public interface RoleService {
	
	public void addRole(String id, String name);
	public void deleteRole(String id);
	public void updateRole(String id, String name);
	public List<Role> findRole(String id);
	public String rolePagination(Pagination pagination);
	public int roleCount();
	
}
