package com.brick.squad.test;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.service.ActivitiesService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:com/brick/squad/config/applicationContext.xml")
public class ActivitiesServiceTest {
	@Autowired
	@Qualifier("activitiesService")
	private ActivitiesService activitiesService;
	public void testfindActivitiesById(){
		activitiesService.findActivitiesById("1");
		
	}
	

}
