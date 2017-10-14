package com.brick.squad.test;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.Address;
import com.brick.squad.service.AddressService;

@RunWith(SpringJUnit4ClassRunner.class)
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
		address.setDetailed("asd");
		address.setProvinceId("qwe");
		addressService.insertAddress(address);
		System.out.print(address);
		
	}
	@Test
	public void testAddressFindAddress() throws Exception{
		addressService.findAddressById("bbd38c90b08c11e78d4f5254002ec43c");
		
	}
}
