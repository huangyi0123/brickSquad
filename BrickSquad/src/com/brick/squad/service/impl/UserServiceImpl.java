package com.brick.squad.service.impl;

import java.util.List;

import net.sf.json.JSONArray;







import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.mapper.UserMapper;
import com.brick.squad.pojo.Type;
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
	public void deleteUser(String id){
		userMapper.deleteUser(id);
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
	public User checkLogin(String username,String password){
	
		User user=userMapper.checkLogin(username);
		if(user!=null&&user.getPassword().equals(SecurityUtil.strToMD5(password))){
			return user;
		}
			return null;
		
		 
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
	


	
	
	

	


	

	
	
}
