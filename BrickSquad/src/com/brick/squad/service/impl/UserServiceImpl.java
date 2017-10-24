package com.brick.squad.service.impl;

import java.util.List;

import net.sf.json.JSONArray;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.mapper.UserMapper;
import com.brick.squad.pojo.User;
import com.brick.squad.service.UserService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.SecurityUtil;
import com.brick.squad.util.Select;
import com.brick.squad.util.Util;
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
	
	public void  addUser(User user){
		
		userMapper.addUser(user);
	}
	public void deleteUser(String username){
		userMapper.deleteUser(username);
	}
	public void updateUser(String username,String password) {
		userMapper.updateUser(username,password);
	}
	
	public String userPagination(Pagination pagination){
		List<User> users=userMapper.userPagination(pagination); 
		int row=userMapper.userCount();
		Util<User> util=new Util<User>();
		String data=util.SplitPage(users, row);
		return data;
	}

	@Override
	public int userCount() {
		int count= userMapper.userCount();
		return count;
	}

	//验证用户名密码
	public User checkLogin(User user1){
	
		User user=userMapper.checkLogin(user1);
		if(user!=null&&user.getPassword().equals(SecurityUtil.strToMD5(user1.getPassword()))){
			return user;
		}
			return null;
		
		 
	}
	public User findUsername(String username) {
		
		return userMapper.findUsername(username);
	}
	@Override
	/**查询所有用户，需求字段*/
	public String findAllUser() throws Exception {
		List<Select> users=userMapper.findAllUser();
		JSONArray jsonArray=new JSONArray();
		String date=jsonArray.fromObject(users).toString();
		return date;
	}
	@Override
	/**查询所有用户，所有字段*/
	public String findAllUsers() throws Exception {
		List<User> users=userMapper.findAllUsers();
		JSONArray jsonArray=new JSONArray();
		String date=jsonArray.fromObject(users).toString();
		return date;

	}
}
