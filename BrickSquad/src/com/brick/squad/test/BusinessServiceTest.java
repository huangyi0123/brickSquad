package com.brick.squad.test;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.Business;
import com.brick.squad.service.BusinessService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath*:com/brick/squad/config/applicationContext.xml")
public class BusinessServiceTest {
	
	@Autowired
	@Qualifier("businessService")
	private BusinessService businessService;

	@Test
	public void testFindBusinessById() {
		fail("Not yet implemented");
	}

	@Test
	public void testInsertBusiness() {
		Business business=new Business();
		business.setName("夏木");
		business.setIdcard("68365");
		business.setShopname("夏木小屋");
		business.setShopMaterialPath("淘宝");
		businessService.insertBusiness(business);
	}

	@Test
	public void testUpdateBusinessById() {
		fail("Not yet implemented");
	}

	@Test
	public void testDeleteBusinessById() {
		fail("Not yet implemented");
	}

}
