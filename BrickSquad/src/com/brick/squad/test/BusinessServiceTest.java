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
		businessService.findBusinessById("48b2a4d4b0a611e78d4f5254002ec43c");
	}

	@Test
	public void testInsertBusiness() {
		Business business=new Business();
		business.setName("夏木");
		business.setIdcard("1");
		business.setShopname("夏木小屋");
		business.setShopMaterialPath("淘宝");
		businessService.insertBusiness(business);
	}

	@Test
	public void testUpdateBusinessById() {
		Business business=businessService.findBusinessById("48b2a4d4b0a611e78d4f5254002ec43c");
		business.setName("夏目");
		businessService.updateBusinessById(business);
	}

	@Test
	public void testDeleteBusinessById() {
		businessService.deleteBusinessById("48b2a4d4b0a611e78d4f5254002ec43c");
	}

}
