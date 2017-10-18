package com.brick.squad.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.brick.squad.pojo.User;
import com.brick.squad.util.Pagination;

public interface UserMapper {
	//根据用户名查询
	public List<User> findUsername(String username);
	//增加用户
	public void addUser
	(@Param("id")String id,
	@Param("username")String username,
	@Param("password")String password,
	@Param("telephone")String telephone,
	@Param("roleId")String roleId);
	//根据用户名删除
	public void deleteUser(String username);
	//根据用户名修改密码
	public void updateUser(@Param("username")String username,@Param("password")String password);
	//用户分页查询
	public List<User> userPagination(Pagination pagination);
	//用户分页条数
	public int userCount(); 
	//用户登录
	public List<User> userLogin(String username, String password);
}
