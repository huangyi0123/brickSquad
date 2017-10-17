package com.brick.squad.test;


import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.Region;
import com.brick.squad.service.AddressService;
import com.brick.squad.util.JunitClassRunner;
import com.brick.squad.util.Pagination;

@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations="classpath:com/brick/squad/config/applicationContext.xml")
public class AddressServiceTest {
	@Autowired
	@Qualifier("addressService")
	private AddressService addressService;
	@Test
	public void testAddressInsert() throws Exception{
		Address address = new Address();
		address.setCityId("1");
		address.setCountryId("2");
		address.setCountyId("4");
		address.setDetailed("123");
		address.setProvinceId("qw的归属感e");
		addressService.insertAddress(address);
		System.out.print(address);
		
	}
	@Test
	public void testFindAddressById() throws Exception{
		addressService.findAddressById("ef0505e8b08d11e78d4f5254002ec43c");
		
	}
	@Test
	public void testDeleteAddressById() throws Exception{
		addressService.deleteAddressById("ef0505e8b08d11e78d4f5254002ec43c");
	}
	@Test
	public void testUpdateAddressById() throws Exception{
		Address address = new Address();
		address.setId("ef0505e8b08d11e78d4f5254002ec43c");
		address.setCityId("5");
		address.setCountryId("4");
		address.setCountyId("3");
		address.setDetailed("啊撒大苏打");
		address.setProvinceId("1");
		addressService.updateAddressById(address);
	}
	@Test
	public void testAddressPagination() throws Exception{
		List<Address> lAddresses = new ArrayList<Address>();
		Pagination pagination = new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(7);
		lAddresses=addressService.addressPagination(pagination);
	}
}
