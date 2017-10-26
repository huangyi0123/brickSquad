package com.brick.squad.service;

import com.brick.squad.pojo.User;
import com.brick.squad.util.Pagination;

public interface UserService {
	/**
	 * 传对象修改User
	 * @param user
	 */
	public void updateUserById(User user);
	/**
	 * 根据用户名查询用户
	 * @param username
	 * @return
	 */
	public User findUserByusername(String username) ;
	public void deleteUser(String id);

	public void updateUser(String username, String password);

	public String userPagination(Pagination pagination);

	public void addUser(User user);

	// 用户分页显示
	public int userCount();

	// 用户登录
	public User checkLogin(User user);
	/**
	 * 查询所有用户,需求字段
	 * */
	public String findAllUser()throws Exception;
	/**
	 * 查询所有用户，所有字段
	 * */
	public String findAllUsers()throws Exception ;

	public User findUsername(String username);


	public User findUserById(String id);

	public void updateUserById(String username, String telephone,String id);



}
