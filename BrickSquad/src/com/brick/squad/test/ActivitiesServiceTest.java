package com.brick.squad.test;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.Activities;
import com.brick.squad.service.ActivitiesService;
import com.brick.squad.util.JunitClassRunner;

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
		activitiesService.deleteActivitiesById("5");
		
	}
	@Test
	public void updateActivitiesById() throws Exception{
		Activities a = activitiesService.findActivitiesById("1");
		a.setName("小明");
		a.setCentent("滚出去");
		a.setStartTime(new Date());
		a.setEndTime(new Date());
		
		activitiesService.updateActivitiesById(a);
	}
	
	
	@Test
	public void insertActivitiesById() throws Exception{
		
		Activities activities = new Activities();
		activities.setTypeId("范伟打天下");
		activities.setName("小白");
		activities.setCentent("dog");
		activities.setStartTime(new Date());
		activities.setEndTime(new Date());
		
		activitiesService.insertActivitiesById(activities);
	}
}
