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

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:com/brick/squad/config/applicationContext.xml"})
public class RoleServiceTest {
	
	@Autowired
	@Qualifier("roleService")
	private RoleService roleService;
	
	//增加角色
	//@Test
	public void addRoleTest(){
		roleService.addRole("3","编辑");
	}
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
	@Test
	public void findRoleTest(){
		List<Role> list=roleService.findRole("1");
		System.out.println(list.size());
	}
	
	
}
