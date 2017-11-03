package com.brick.squad.test;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.expand.ActivitiesExpand;
import com.brick.squad.pojo.Activities;
import com.brick.squad.service.ActivitiesService;
import com.brick.squad.util.JunitClassRunner;
import com.brick.squad.util.Pagination;

@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations="classpath:com/brick/squad/config/applicationContext.xml")
public class ActivitiesServiceTest {
	
	@Autowired
	@Qualifier("activitiesService")
	private ActivitiesService activitiesService;
	
	@Test
	public void findActivitiesById() throws Exception{
	   Activities activities = activitiesService.findActivitiesById("1");
		System.out.println(activitiesService.findActivitiesById("1").getName());
	}
	
	@Test
	public void deleteActivitiesById() throws Exception{
		activitiesService.deleteActivitiesById("4492fddeb79c11e78d4f5254002ec43c");
		
	}
	@Test
	public void updateActivitiesById() throws Exception{
		Activities a = activitiesService.findActivitiesById("1");
		a.setName("范伟111");
		a.setCentent("好玩");
		a.setStartTime(new Date());
		a.setEndTime(new Date());
		activitiesService.updateActivitiesById(a);
	}
	
	
	@Test
	public void insertActivitiesById() throws Exception{
		Activities activities = new Activities();
		activities.setTypeId("12222");
		activities.setName("麻将");
		activities.setCentent("午饭后小区打麻将午饭后小区打麻将午饭后小区打麻将");
		activities.setStartTime(new Date());
		activities.setEndTime(new Date());
		activitiesService.insertActivitiesById(activities);
	}
	
	
	//分页测试
	@Test
	public void testActivitiesPagination(){
		List<Activities> activities = new ArrayList<>();
		Pagination pagination = new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(4);
		System.out.println("++++++++"+activitiesService.activitiesPagination(pagination));
	}
	
	@Test
	public void findActivitiesAllCount(){
		System.out.println(activitiesService.findActivitiesAllCount());
	}
	
	@Test
	public void findAllActivities(){
		System.out.println(activitiesService.findAllActivities());
	}
	/**
	 * 后补测试方法
	 * */
	@Test
	public void findActivitiesAllCount1(){
	}
	@Test
	public void findAllTypeAndUser(){
		String data=activitiesService.findAllTypeAndUser();
		System.out.println("+++++++"+data+"++++++");
	}
	@Test
	public void findActivitiesAndTpyeAndUser(){
		ActivitiesExpand activitiesExpand= activitiesService.findActivitiesAndTpyeAndUser("4492fddeb79c11e78d4f5254002ec43c");
		System.out.println("测试"+activitiesExpand);
	}
	
	@Test
	public void findAllActivitiesIdAndName(){
		String data=activitiesService.findAllActivitiesIdAndName();
		System.out.println("测试+++++++++++++"+data);
	}
}
