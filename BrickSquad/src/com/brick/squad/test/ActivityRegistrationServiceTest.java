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
import com.brick.squad.util.JunitClassRunner;
import com.brick.squad.util.Pagination;
@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations="classpath*:com/brick/squad/config/applicationContext.xml")
public class ActivityRegistrationServiceTest {

	@Autowired
	@Qualifier("activityRegistrationService")
	private ActivityRegistrationService activityRegistrationService;
	
	@Test
	public void testFindActivityRegistrationById() {
		ActivityRegistration activityRegistration=
				activityRegistrationService.findActivityRegistrationById("123");
	System.out.println(activityRegistration.toString());
	
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
		activityRegistration.setRegistrationDate(new Date());
		activityRegistration.setAppointment(3);
		activityRegistration.setPerId("3");
		activityRegistrationService.updateActivityRegistrationById(activityRegistration);
		
	}

	@Test
	public void testDeleteActivityRegistrationById() {
		activityRegistrationService.deleteActivityRegistrationById("123");
	}
	
	@Test
	public void testActivityRegistrationPagination(){
		Pagination pagination=new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(4);
		System.out.println(activityRegistrationService.activityRegistrationPagination(pagination));
	}

}
