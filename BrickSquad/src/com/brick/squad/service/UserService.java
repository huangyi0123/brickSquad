package com.brick.squad.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.brick.squad.pojo.User;

public interface UserService {
	public List<User> findUsername(String username);
	public void addUser(String id,String username,String password,String telephone,String roleId);
	public void deleteUser(String username);
	public void updateUser(String username,String password);
}
	

