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
		System.out.println(limitsService.findLimitsById("b97a0794b0aa11e78d4f5254002ec43c").isAd());
	}

	@Test
	public void testInsertLimits() {

		Limits limits=new Limits();
		limits.setRoleId("001");
		limits.setTablename("user");
		limits.setAd(true);
		limits.setDl(false);
		limits.setQuery(true);
		limits.setUp(false);
		limitsService.insertLimits(limits);
	}

	@Test
	public void testUpdateLimitsById() {
		Limits limits=limitsService.findLimitsById("b97a0794b0aa11e78d4f5254002ec43c");
		limits.setAd(false);
		limitsService.updateLimitsById(limits);
	}

	@Test
	public void testDeleteLimitsById() {
		limitsService.deleteLimitsById("b97a0794b0aa11e78d4f5254002ec43c");
	}

}
