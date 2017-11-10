package com.brick.squad.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;

import com.brick.squad.pojo.Business;
import com.brick.squad.service.BusinessService;
import com.brick.squad.util.JunitClassRunner;
import com.brick.squad.util.Pagination;

@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations = "classpath*:com/brick/squad/config/applicationContext.xml")
public class BusinessServiceTest {

	@Autowired
	@Qualifier("businessService")
	private BusinessService businessService;

	@Test
	public void testFindBusinessById() {
		Business business = businessService.findBusinessById("1");
		System.out.println(business.getName());
	}

	@Test
	public void testInsertBusiness() {
		Business business = new Business();
		business.setName("夏木");
		business.setIdcard("1");
		business.setShopname("夏木小屋");
		business.setShopMaterialPath("淘宝");
		businessService.insertBusiness(business);
	}

	@Test
	public void testUpdateBusinessById() {
		Business business = businessService.findBusinessById("2");
		business.setName("夏目");
		businessService.updateBusinessById(business);
	}

	@Test
	public void testDeleteBusinessById() {
		businessService.deleteBusinessById("121");
	}

	@Test
	public void testbusinessPagination() {
		Pagination pagination = new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(4);
		System.out.println(businessService.businessPagination(pagination));
	}

	@Test
	public void findAllBusiness() {
		System.out.println(businessService.findAllBusiness());
	}

	@Test
	public void findBusiness() {
		String data = businessService.findAllBusiness();
		System.out.println(data);
	}
}
