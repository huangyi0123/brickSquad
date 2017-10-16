package com.brick.squad.test;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;

import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.service.PersonalInformationService;
import com.brick.squad.util.JunitClassRunner;
@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations="classpath:com/brick/squad/config/applicationContext.xml")
public class PersonalInformationServiceImplTest {
	@Autowired
	@Qualifier("personalInformationService")
	private PersonalInformationService personalInformationService;
	@Test
	public void testFindPersonalInformationById() {
		personalInformationService.findPersonalInformationById("1");
	}

	@Test
	public void testInsertPersonalInformation() {
			PersonalInformation personalInformation=new PersonalInformation();
			personalInformation.setName("zs");
			personalInformation.setBirthday(new Date());
			personalInformation.setGender("男");
			personalInformation.setAddressId("123");
			personalInformation.setIdCard("1212");
			personalInformationService.insertPersonalInformation(personalInformation);
			System.out.println(personalInformation.getId());
		
	}

	@Test
	public void testUpdatePersonalInformationById() {
		PersonalInformation personalInformation =personalInformationService.findPersonalInformationById("1");
		personalInformation.setName("12");
		personalInformationService.updatePersonalInformationById(personalInformation);
	}

	@Test
	public void testDeletePersonalInformationById() {
			personalInformationService.deletePersonalInformationById("765c3378b08811e78d4f5254002ec43c");
	
	}
}
