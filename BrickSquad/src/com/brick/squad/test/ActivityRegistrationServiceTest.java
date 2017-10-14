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
public class ActivityRegistrationServiceTest {

	@Autowired
	@Qualifier("activityRegistrationService")
	private ActivityRegistrationService activityRegistrationService;
	
	@Test
	public void testFindActivityRegistrationById() {
		activityRegistrationService.findActivityRegistrationById("123");
	}

	@Test
	public void testInsertActivityRegistration() {
		ActivityRegistration activityRegistration=new ActivityRegistration();
		activityRegistration.setPerId("1");
		activityRegistration.setActivitiesId("2");
		activityRegistration.setRegistrationDate(new Date());
		activityRegistration.setAppointment(4);
		activityRegistrationService.insertActivityRegistration(activityRegistration);
		
	}

	@Test
	public void testUpdateActivityRegistrationById() {
		ActivityRegistration activityRegistration=activityRegistrationService.findActivityRegistrationById("123");
		activityRegistration.setActivitiesId("3");
		activityRegistrationService.updateActivityRegistrationById(activityRegistration);
		
	}

	@Test
	public void testDeleteActivityRegistrationById() {
		activityRegistrationService.deleteActivityRegistrationById("123");
	}

}
