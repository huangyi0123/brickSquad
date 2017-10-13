package com.brick.squad.test;

import static org.junit.Assert.*;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.service.PersonalInformationService;
@RunWith(SpringJUnit4ClassRunner.class)
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
	public void testInsert() {
			PersonalInformation personalInformation=new PersonalInformation();
			personalInformation.setName("zs");
			personalInformation.setBirthday(new Date());
			personalInformation.setGender("男");
			personalInformation.setAddressId("123");
			personalInformation.setIdCard("1212");
			personalInformationService.insert(personalInformation);
		
	}

	@Test
	public void testUpdate() {
		PersonalInformation personalInformation =personalInformationService.findPersonalInformationById("1");
		personalInformation.setName("的是");
		personalInformationService.update(personalInformation);
	}

	@Test
	public void testDelete() {
			personalInformationService.delete("e176a684b00b11e78d4f5254002ec43c");
	
	}
}
