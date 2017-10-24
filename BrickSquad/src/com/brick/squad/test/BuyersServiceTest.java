package com.brick.squad.test;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.Buyers;
import com.brick.squad.service.BuyersService;
import com.brick.squad.util.JunitClassRunner;
import com.brick.squad.util.Pagination;

@RunWith(JunitClassRunner.class)
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
		buyers.setInformationId("8");
		buyersService.insertBuyers(buyers);
	}
	@Test
	public void testfindBuyersByUUID () throws Exception{
/*		Buyers buyers = new Buyers();
		buyers.setId("1");*/
		List<Buyers> buyersList = new ArrayList<Buyers>();
		buyersList = buyersService.findBuyersByUUID("1");
		System.out.print(buyersList.get(0).getDeliveryAddressId()+"---------------");
	}
	@Test
	public void testUpdateBuyersById() throws Exception{
		Buyers buyers = new Buyers();
		buyers.setId("ab1595b6b0bd11e78d4f5254002ec43c");
		buyers.setCurrentIntegral(00);
		buyers.setDeliveryAddressId("007");
		buyers.setGrade(006);
		buyers.setHistoricalIntegral(002);
		buyers.setInformationId("004");
		buyersService.updateBuyersById(buyers);	
	}
	@Test
	public void testDeleteBuyersById() throws Exception{

		buyersService.deleteBuyersById("ab1595b6b0bd11e78d4f5254002ec43c");
	}
	@Test
	public void testBuyersPagination() throws Exception{
		/*List<Buyers> lBuyers = new ArrayList<Buyers>();*/
		Pagination pagination = new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(6);
		/*lBuyers = buyersService.buyersPagination(pagination);*/
		buyersService.buyersPagination(pagination);
	}
	@Test
	public void testFindBuyersAllCount() throws Exception{
		buyersService.findBuyersAllCount();
	}
}
