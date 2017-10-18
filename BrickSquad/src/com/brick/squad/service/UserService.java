package com.brick.squad.service;

import java.util.List;
import com.brick.squad.pojo.User;
import com.brick.squad.util.Pagination;

public interface UserService {
	public List<User> findUsername(String username);
	/*public void addUser(String id,String username,String password,String telephone,String roleId);*/
	public void deleteUser(String username);
	public void updateUser(String username,String password);
	public String userPagination(Pagination pagination);
	public void addUser(User user);
	//用户分页显示
		public int userCount(); 
}
	

