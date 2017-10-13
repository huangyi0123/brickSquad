package com.brick.squad.test;

import static org.junit.Assert.*;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.ActivityRegistration;
import com.brick.squad.service.ActivityRegistrationService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:com/brick/squad/config/applicationContext.xml")
public class ActivityRegistrationServiceImplTest {

	@Autowired
	@Qualifier("activityRegistrationService")
	private ActivityRegistrationService activityRegistrationService;
	@Test
	public void testFindActivityRegistrationById() {
		fail("Not yet implemented");
	}

	@Test
	public void testInsert() {
		ActivityRegistration activityRegistration=new ActivityRegistration();
		activityRegistration.setPerId("1");
		activityRegistration.setActivitiesId("2");
		activityRegistration.setRegistrationDate(new Date());
		activityRegistration.setAppointment(4);
		activityRegistrationService.insert(activityRegistration);
		
	}

	@Test
	public void testUpdate() {
		fail("Not yet implemented");
	}

	@Test
	public void testDelete() {
		fail("Not yet implemented");
	}

}
