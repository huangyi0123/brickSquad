package com.brick.squad.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.Buyers;
import com.brick.squad.service.BuyersService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath*:com/brick/squad/config/applicationContext.xml")
public class BuyersServiceTest {
	@Autowired
	@Qualifier("buyersService")
	private BuyersService buyersService;
	@Test
	public void testInsertBuyers() throws Exception{
		Buyers buyers = new Buyers();
		buyers.setCurrentIntegral(5);
		buyers.setDeliveryAddressId("6");
		buyers.setGrade(4);
		buyers.setHistoricalIntegral(5);
		buyersService.insertBuyers(buyers);
	}
}
