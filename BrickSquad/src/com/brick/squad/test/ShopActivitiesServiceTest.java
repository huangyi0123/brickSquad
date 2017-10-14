package com.brick.squad.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.ShopActivities;
import com.brick.squad.service.ShopActivitiesService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:com/brick/squad/config/applicationContext.xml")
public class ShopActivitiesServiceTest {
	@Autowired
	@Qualifier("shopActivities")
	
	private ShopActivitiesService shopActivities;
	@Test
	public void test() throws Exception{
		
		System.out.println(shopActivities.findShopActivitiesById("1").getTypeId());
	}
	
	/**
	 * 测试修改内容方法
	 * @throws Exception 
	 */
	@Test
	public void testUpdate() throws Exception{
		ShopActivities s = new ShopActivities();
		s.setId("1");
		shopActivities.updateShopActivitiesById("s");
		
	}
	@Test
	public void testDelete() throws Exception{
		 
		shopActivities.delectShopActivitiesById("2");
	}
	
	
}
