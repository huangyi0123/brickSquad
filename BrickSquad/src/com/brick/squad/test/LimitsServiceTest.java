package com.brick.squad.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.Limits;
import com.brick.squad.service.LimitsService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:com/brick/squad/config/applicationContext.xml")
public class LimitsServiceTest {
	@Autowired
	@Qualifier("limitsService")
	private LimitsService limitsService;

	@Test
	public void testFindLimitsById() {
		System.out.println("asssd");
	}

	@Test
	public void testInsertLimits() {
		try {
			Limits limits = new Limits();
			limits.setTablename("user");
			limits.setRoleId("管理员");
			limits.setAd(true);
			limits.setDl(true);
			limits.setQuery(false);
			limits.setUp(true);
			limitsService.insertLimits(limits);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Test
	public void testUpdateLimitsById() {

	}

	@Test
	public void testDeleteLimitsById() {

	}

}
