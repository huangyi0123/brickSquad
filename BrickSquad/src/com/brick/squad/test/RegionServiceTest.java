package com.brick.squad.test;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.service.RegionService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:com/brick/squad/config/applicationContext.xml")
public class RegionServiceTest {
	@Autowired
	@Qualifier("regionService")
	private RegionService regionService;
	@Test
	public void testFindRegionByLevel() {
		regionService.findRegionByLevel(2);
	}

	@Test
	public void testFindRegionByPerantId() {
		fail("Not yet implemented");
	}

}
