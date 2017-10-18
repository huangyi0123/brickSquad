package com.brick.squad.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.Role;
import com.brick.squad.service.RoleService;
import com.brick.squad.util.Pagination;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:com/brick/squad/config/applicationContext.xml"})
public class RoleServiceTest {
	
	@Autowired
	@Qualifier("roleService")
	private RoleService roleService;
	
	//增加角色
	/*@Test
	public void addRoleTest(){
		roleService.addRole("1","超级管理员");
		roleService.addRole("2","CEO");
		roleService.addRole("3","分店管理员");
		roleService.addRole("4","编辑");
		roleService.addRole("5","商家");
		roleService.addRole("6","老人");
	}*/
	//根据ID删除角色
	//@Test
	public void deleteRoleTest(){
		roleService.deleteRole("3");
	}
	//根据ID修改角色
	//@Test
	public void updateRoleTest(){
		roleService.updateRole("1","编辑");
	}
	
	//根据ID查询角色
	//@Test
	public void findRoleTest(){
		List<Role> list=roleService.findRole("1");
		System.out.println(list.size());
	}
	
	/*@Test
	public void rolePaginationTest(){
		Pagination pagination=new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(3);
		List<Role> list=roleService.rolePagination(pagination);
		
		for(int i = 0; i < list.size(); i++){
			System.out.print(list.get(i).getId()+" ");
			System.out.println(list.get(i).getName());
		}
		
	}*/
		/*@Test
		public void roleCountTest(){
			
			System.out.println(roleService.roleCount());
		}*/
		@Test
		public void RolePaginationTest() throws Exception{
			Pagination pagination = new Pagination();
			pagination.setCurentPage(1);
			pagination.setPageSize(8);
			System.out.println(roleService.rolePagination(pagination));
		}
		}
	


