package com.brick.squad.test;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;

import com.brick.squad.pojo.Address;
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
		address.setCityId("2");
		address.setCountryId("3");
		address.setCountyId("4");
		address.setProvinceId("贵州贵阳市");
		address.setDetailed("5");
		
		addressService.insertAddress(address);
		System.out.print(address.getId()+"ID");
		
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
		Address address = addressService.findAddressById("8e938ce0b7a211e78d4f5254002ec43c");	
		address.setDetailed("xiugai");
		addressService.updateAddressById(address);
	}
	@Test
	public void testAddressPagination() throws Exception{
		/*List<Address> lAddresses = new ArrayList<Address>();*/
		Pagination pagination = new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(7);
		System.out.println(addressService.addressPagination(pagination));
	}
	/*@Test
	public void testfindAddressAllCount() throws Exception{
		addressService.findAddressAllCount();
	}*/
	@Test
	/**测试：查询省级区域*/
	public void findRegionsByLevel(){
		String data=addressService.findRegionsByLevel();
		System.out.println(data);
	}
	@Test
	/**测试：根据父id查询区域*/
	public void findRegionsByParentId(){
		String data=addressService.findRegionsByParentId("37");
		System.out.println(data);
	}
	@Test
	/**测试：根据地址信息查询相关区域*/
	public void getAllRegion() throws Exception{
		Address address= addressService.findAddressById("8e938ce0b7a211e78d4f5254002ec43c");
		System.out.println(addressService.getAllRegion(address));
	}
}
