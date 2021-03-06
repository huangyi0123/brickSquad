package com.brick.squad.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;

import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.service.PersonalInformationService;
import com.brick.squad.util.JunitClassRunner;
import com.brick.squad.util.Pagination;

@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations = "classpath:com/brick/squad/config/applicationContext.xml")
public class PersonalInformationServiceImplTest {
	@Autowired
	@Qualifier("personalInformationService")
	private PersonalInformationService personalInformationService;

	@Test
	public void testFindPersonalInformationById() {
		PersonalInformation personalInformation = personalInformationService
				.findPersonalInformationById("12");
		System.out.println(personalInformation);
	}

	@Test
	public void testInsertPersonalInformation() {
		/*
		 * PersonalInformation personalInformation=new PersonalInformation();
		 * personalInformation.setName("zs");
		 * personalInformation.setBirthday(new Date());
		 * personalInformation.setGender("男");
		 * personalInformation.setAddressId("123");
		 * personalInformation.setIdCard("1212");
		 * personalInformationService.insertPersonalInformation
		 * (personalInformation);
		 * System.out.println(personalInformation.getId());
		 */

	}

	/*
	 * @Test public void testUpdatePersonalInformationById() {
	 * PersonalInformation personalInformation
	 * =personalInformationService.findPersonalInformationById
	 * ("8ecd8aa8b7a211e78d4f5254002ec43c");
	 * System.out.println(personalInformation.toString());
	 * personalInformation.setName("12");
	 * personalInformationService.updatePersonalInformationById
	 * (personalInformation); }
	 */
	@Test
	public void testDeletePersonalInformationById() {
		personalInformationService.deletePersonalInformationById("12");
	}

	@Test
	public void testPersonalInformationPagination() {
		Pagination pagination = new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(4);
		System.out.println(personalInformationService
				.personalInformationPagination(pagination));
	}

	@Test
	public void findAllPersonalInformation() {
		String data = personalInformationService.findAllPersonalInformation();
		System.out.println(data);
	}

	@Test
	public void findAllPersonalInformations() {
		System.out.println(personalInformationService
				.findAllPersonalInformations());
	}

	@Test
	public void findTypesByParentId() {
		String data = personalInformationService.findTypesByParentId();
		System.out.println(data);
	}

	@Test
	public void findAddressById() throws Exception {
		Address address = personalInformationService
				.findAddressById("4d8ef7aac04611e7aca65254002ec43c");
		System.out.println(address.getProvinceId());
	}
	@Test
	public void findPerByAge(){
		try {
			System.out.println(personalInformationService.findPerByAge("594cf09abc4c11e7aca65254002ec43c"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
