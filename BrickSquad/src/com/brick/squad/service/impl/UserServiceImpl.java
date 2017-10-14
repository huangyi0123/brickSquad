package com.brick.squad.service.impl;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.mapper.UserMapper;
import com.brick.squad.pojo.User;
import com.brick.squad.service.UserService;
/**
 * 
 * @author Luyujing
 *	
 *	User表调用增删改查方法
 */
public class UserServiceImpl implements UserService {
	@Autowired
	@Qualifier("userMapper")
	private UserMapper userMapper;
	@Override
	public List<User> findUsername(String username) {
		return userMapper.findUsername(username);
	}
	
	public void  addUser(String id,String username,String password,String telephone,String roleId){
		
		userMapper.addUser(id, username, password, telephone, roleId);
	}
	public void deleteUser(String username){
		userMapper.deleteUser(username);
	}
	public void updateUser(String username,String password) {
		userMapper.updateUser(username,password);
	}

	
	
}
