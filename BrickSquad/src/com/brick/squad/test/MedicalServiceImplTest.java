package com.brick.squad.test;

import java.util.Date;

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
	public void insertMedicalTest() {
		Medical medical = new Medical();
		medical.setAttendingSurgeon("吴文鑫s" + new Date().getSeconds());
		medical.setContent("11s1" + new Date().getSeconds());
		medical.setTypeId("kkks" + new Date().getSeconds());
		medical.setHospital("lljhsg" + new Date().getSeconds());
		medical.setInspectionDate(new Date());
		medical.setPerId("4545455555555" + new Date().getSeconds());
		medicalService.insertMedical(medical);

	}

	@Test
	public void findMedicalById() {
		Medical medical = medicalService
				.findMedicalById("a5c5e354b07e11e7ae5d8cdcd49043a9");
		System.out.println(medical.getAttendingSurgeon() + "***");
	}

	@Test
	public void updateMedicalCententById() {
		Medical medical = new Medical();
		medical.setId("04a31f45b02111e7ae5d8cdcd49043a9");
		medical.setContent("修改后的content");
		medicalService.updateMedicalById(medical);
	}
	
	@Test
	public void deleteMedicalById(){
		medicalService.deleteMedicalById("a5c5e354b07e11e7ae5d8cdcd49043a9");
	}
}
