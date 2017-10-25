package com.brick.squad.test;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.expand.AddressAndBuyersExpand;
import com.brick.squad.pojo.Address;
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
		Address address = new Address();
		address.setCityId("9");
		address.setCountryId("8");
		address.setCountyId("7");
		address.setDetailed("88");
		address.setId("998");
		address.setProvinceId("89");
		buyers.setCurrentIntegral(5);
		buyers.setDeliveryAddressId("6");
		buyers.setGrade(4);
		buyers.setHistoricalIntegral(5);
		buyers.setInformationId("8");
	}
	@Test
	public void testfindBuyersByUUID () throws Exception{
/*		Buyers buyers = new Buyers();
		buyers.setId("1");*/
		 buyersService.findBuyersByUUID("ab1595b6b0bd11e78d4f5254002ec43c");
	}
	@Test
	public void testUpdateBuyersById() throws Exception{
		AddressAndBuyersExpand addressAndBuyersExpand = new AddressAndBuyersExpand();

		buyersService.updateBuyersById(addressAndBuyersExpand);	
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
