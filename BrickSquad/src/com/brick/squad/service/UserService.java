package com.brick.squad.service;

import java.util.List;

import com.brick.squad.pojo.User;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;

public interface UserService {
	/**
	 * 传对象修改User图片
	 * @param user
	 */
	public void updateUserUserPicPathById(User user);
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
	//public int userCount();

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

	/**
	 * 根据分店名称查询老人用户名及id
	 * @param branchId 分店id
	 * @return 老人用户名及idjson字符串
	 */
	public String findUserByBranchId(String branchId);

}
