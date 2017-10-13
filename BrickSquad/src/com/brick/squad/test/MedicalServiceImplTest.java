package com.brick.squad.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.Medical;
import com.brick.squad.service.MedicalService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:com/brick/squad/config/applicationContext.xml")
public class MedicalServiceImplTest {
@Autowired
@Qualifier("medicalService")
private MedicalService medicalService;

	@Test
public void insertMedicalTest(){
		Medical medical = new Medical();
		medical.setAttendingSurgeon("");
	medicalService.insertMedical(medical);
	
}

}
