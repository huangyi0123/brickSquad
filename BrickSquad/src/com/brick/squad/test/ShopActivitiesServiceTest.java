package com.brick.squad.test;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.ShopActivities;
import com.brick.squad.service.ShopActivitiesService;
import com.brick.squad.util.JunitClassRunner;
import com.brick.squad.util.Pagination;

@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations="classpath:com/brick/squad/config/applicationContext.xml")
public class ShopActivitiesServiceTest {
	private static final String ShopActivities = null;
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
//			s.setStartTime("2017-10-20 13:00:00");
//			s.setEndTime("2017-10-20 15:00:00");
			
			shopActivitiesService.insertShopActivitiesById(s);
	} 
	
	
	/**
	 * 测试分页
	 */
	
	/*@Test
	public void testshopActivitiesPagination(){
		List<ShopActivities> shopActivities = new ArrayList<>();
		Pagination pagination = new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(4);
		shopActivities=	shopActivitiesService.shopActivitiesPagination(pagination); 
		for (ShopActivities shopActivities2 : shopActivities) {
			System.out.println(shopActivities2.toString());
		}
	}*/
	
	
	//测试统计
	@Test
	public void findShopActivitiesAllCount(){
		
		
		System.out.println(shopActivitiesService.findShopActivitiesAllCount());
	}
}
