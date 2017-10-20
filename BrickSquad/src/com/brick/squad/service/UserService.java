package com.brick.squad.service;

import java.util.List;

import com.brick.squad.pojo.User;
import com.brick.squad.util.Pagination;

public interface UserService {
	
	public void deleteUser(String username);

	public void updateUser(String username, String password);

	public String userPagination(Pagination pagination);

	public void addUser(User user);

	// 用户分页显示
	public int userCount();

	// 用户登录
	public User checkLogin(String username, String password);

	public User findUsername(String username);

}
