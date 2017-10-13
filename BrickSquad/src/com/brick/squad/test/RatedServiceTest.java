package com.brick.squad.test;

import java.util.Date;

import javax.enterprise.inject.New;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.Rated;
import com.brick.squad.service.RatedService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:com/brick/squad/config/applicationContext.xml")
public class RatedServiceTest {
	@Autowired
	@Qualifier("ratedService")
	private RatedService ratedService;

	@Test
	public void testfindRatedById() {
		System.out.println("**");
		Rated rated = new Rated();
		rated = ratedService.findRatedById("0");
		System.out.println("**" + rated.getCentent() + rated.getRatedDate());
	}

	@Test
	public void testinsertRated() {
		Rated rated = new Rated();
		rated.setId("121212");
		rated.setOrderId("2222222");
		rated.setRatedDate(new Date());
		rated.setCentent("testServicce");
		ratedService.insertRated(rated);
	}
}
