package com.brick.squad.service.impl;

import java.util.List;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.expand.UserExpand;
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
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
	@Qualifier("userMapper")
	
	private UserMapper userMapper;
	
	public void  addUser(User user){
		
		userMapper.addUser(user);
	}
	public void deleteUser(String id){
		userMapper.deleteUser(id);
	}
	public void updateUser(String username,String password) {
		userMapper.updateUser(username,password);
	}
	
	public String userPagination(Pagination pagination){
		List<UserExpand> users=userMapper.userPagination(pagination); 
		int row=userMapper.userCount();
		Util<UserExpand> util=new Util<UserExpand>();
		String data=util.SplitPage(users, row);
		return data;
	}

	@Override
	public int userCount() {
		int count= userMapper.userCount();
		return count;
	}
	
	//验证用户名密码
	public User checkLogin(User user){
		
		user.setPassword(SecurityUtil.strToMD5(user.getPassword()));
		return userMapper.checkLogin(user);
		
	}
	public User findUsername(String username) {
		
		return userMapper.findUsername(username);
	}
	
	public User findUserById(String id){
		return userMapper.findUserById(id);
	}
	
	public void updateUserById(String username, String telephone,String id){
		userMapper.updateUserById(username,telephone,id);
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
	@Override
	public User findUserByusername(String username) {
		
		return userMapper.findUserByusername(username);
	}
	@Override
	public void updateUserById(User user) {
		User newUser =userMapper.findUserById(user.getId());
		//密码MD5加密
		 String passwordMd5 =SecurityUtil.strToMD5(user.getPassword());
		newUser.setPassword(passwordMd5);
		userMapper.updateUserById(newUser);
		
	}

}


	
		

