package com.brick.squad.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.brick.squad.pojo.Type;
import com.brick.squad.pojo.User;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;

public interface UserMapper {
	//根据用户名查询

/*	public void addUser
	(@Param("id")String id,
	@Param("username")String username,
	@Param("password")String password,
	@Param("telephone")String telephone,
	@Param("roleId")String roleId);*/
	public void addUser(User user);
	//根据用户ID删除
	public void deleteUser(String id);
	//根据用户名修改密码
	public void updateUser(@Param("username")String username,@Param("password")String password);
	//用户分页查询
	public List<User> userPagination(Pagination pagination);
	//用户分页条数
	public int userCount(); 
	//用户登录
	public User checkLogin(String username);

	//查找用户
	public User findUsername(String username);
	

	/**
	 * 查询所有用户,需求字段
	 * */
	public List<Select> findAllUser();
	/**
	 * 查询所有用户，所有字段
	 * */
	public List<User> findAllUsers();
	public User findUserById(String id);
	public  void updateUserById(@Param("username")String username,@Param("telephone")String telephone,@Param("id")String id);
	
	

}
