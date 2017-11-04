package com.brick.squad.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.User;
import com.brick.squad.service.UserService;
import com.brick.squad.util.JunitClassRunner;
import com.brick.squad.util.Pagination;



/**
 * 
 * @author Luyujing
 *	
 *	用户表测试方法
 */
@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations="classpath:com/brick/squad/config/applicationContext.xml")

public class UserServiceTest {
	
	
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	@Test
	public void testfindUserByusername(){
		System.out.println(userService.findUserByusername("xuebiao").toString());
		
	}
	//User表插入数据
	@Test
	public void addUserTest(){
		User user = new User();
		user.setPassword("admin");
		user.setRoleId("4");
		user.setBranchId("2121");
		user.setTelephone("8808628");
		user.setUsername("吴老狗");
		userService.addUser(user);
	}
	//User表删除数据
	@Test
	public void deleteUserTest(){
		userService.deleteUser("7a284856c0a611e7aca65254002ec43c");
	}
	//User表修改密码
	/*//@Test
	public void updateUserTest(){
		userService.updateUser("lyj","222222");
	}*/
	//用户分页查询
	/*@Test
	public void userPaginationTest(){
		Pagination pagination =new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(3);
		List<User> list=userService.userPagination(pagination);
		System.out.println(list.size());
	}*/
	//@Test
	/*public void userCount(){
		
<<<<<<< HEAD
		System.out.println(userService.userCount());
	}*/

	//@Test
	public void testUserPagination() throws Exception{
		Pagination pagination = new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(8);
		System.out.println(userService.userPagination(pagination));
	}
	/*//@Test
	public void userLoginTest(){
		List<User> list=userService.userLogin("admin","admin");
		System.out.println(list.size());
	}*/
	@Test
	public void findAllUser() throws Exception{
		String data=userService.findAllUser();
		System.out.println(data);
	}
	@Test
	public void findAllUsers() throws Exception{
		System.out.println(userService.findAllUsers());
		}
	@Test
	public void updateUserById(){
		userService.updateUserById("xuebiao", "13078507782", "3");
	}
	@Test
	public void findUserByBranchId(){
		String data=userService.findUserByBranchId("594cf09abc4c11e7aca65254002ec43c");
		System.out.println(data);
	}
	@Test
	public void updateUserUserPicPathById(){
		User user=new User();
		user.setId("3");
		user.setUserPicPath("xuebiao/deee");
		userService.updateUserUserPicPathById(user);
	}
	}
