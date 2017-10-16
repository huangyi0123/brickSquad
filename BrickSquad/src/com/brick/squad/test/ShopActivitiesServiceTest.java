package com.brick.squad.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.ShopActivities;
import com.brick.squad.service.ShopActivitiesService;
import com.brick.squad.util.JunitClassRunner;

@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations="classpath:com/brick/squad/config/applicationContext.xml")
public class ShopActivitiesServiceTest {
	@Autowired
	@Qualifier("shopActivitiesService")
	
	private ShopActivitiesService shopActivitiesService;
	/**
	 * 测试查询方法
	 * @throws Exception
	 */
	@Test
	public void findShopActivitiesById() throws Exception{
		
		System.out.println(shopActivitiesService.findShopActivitiesById("2").getTypeId());
	}
	
	/**
	 * 测试修改内容方法
	 * @throws Exception 
	 */
	@Test
	public void UpdateShopActivitiesById() throws Exception{
		/**
		 * 如果要修改，先查询再修改。
		 */
		ShopActivities s = shopActivitiesService.findShopActivitiesById("2");
		s.setArticleId("1213");
		shopActivitiesService.updateShopActivitiesById(s);
		
	}
	@Test
	public void DeleteShopActivitiesById() throws Exception{
		 
		shopActivitiesService.delectShopActivitiesById("1");
	}
	
	@Test
	public void InsertShopActivitiesById() throws Exception{
			ShopActivities s = new ShopActivities();
			s.setTypeId("美术");
			s.setStartTime("2017-10-20 13:00:00");
			s.setEndTime("2017-10-20 15:00:00");
			
			shopActivitiesService.insertShopActivitiesById(s);
	} 
	
}
