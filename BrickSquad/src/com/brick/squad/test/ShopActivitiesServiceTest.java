package com.brick.squad.test;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.expand.ShopActivitiesExpand;
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
		System.out.println(shopActivitiesService.findShopActivitiesById("22a7b356bf8d11e7aca65254002ec43c").getTypeId());
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
		ShopActivities s = shopActivitiesService.findShopActivitiesById("12");
		s.setTypeId("舞狮");
		shopActivitiesService.updateShopActivitiesById(s);
	}
	@Test
	public void DeleteShopActivitiesById() throws Exception{
		shopActivitiesService.delectShopActivitiesById("12");
	}
	@Test
	public void InsertShopActivitiesById() throws Exception{
			ShopActivities s = new ShopActivities();
			s.setTypeId("meem");
			s.setStartTime(new Date());
			s.setEndTime(new Date());
			
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
	/*@Test
	public void findShopActivitiesAllCount(){
		
		
		System.out.println(shopActivitiesService.findShopActivitiesAllCount());
	}
	*/
	@Test
	public void shopActivitiesPagination(){
		Pagination pagination=new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(4);
		String data=shopActivitiesService.shopActivitiesPagination(pagination);
		System.out.println(data);
	}
	@Test
	public void findAllShopActivities(){
		
		System.out.println("11111111111111111111111"+shopActivitiesService.findAllShopActivities());
	}
	@Test
	public void findTypeAndArticle(){
	String data=shopActivitiesService.findTypeAndArticle();
	System.out.println(data);
	}
	@Test
	public void findShopActivitiesAndTypeAndArticle(){
		ShopActivitiesExpand shopActivitiesExpand=shopActivitiesService.findShopActivitiesAndTypeAndArticle("12");
		System.out.println(shopActivitiesExpand.getAname());
	}
}
