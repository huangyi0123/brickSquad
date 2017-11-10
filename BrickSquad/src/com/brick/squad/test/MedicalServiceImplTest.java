package com.brick.squad.test;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.expand.MedicalExpand;
import com.brick.squad.pojo.Medical;
import com.brick.squad.pojo.Rated;
import com.brick.squad.service.MedicalService;
import com.brick.squad.util.JunitClassRunner;
import com.brick.squad.util.Pagination;

@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations = "classpath:com/brick/squad/config/applicationContext.xml")
public class MedicalServiceImplTest {
	@Autowired
	@Qualifier("medicalService")
	private MedicalService medicalService;

	/*
	 * @Test public void findMedicalAllCount(){
	 * System.out.println(medicalService.findMedicalAllCount()); }
	 */
	@Test
	public void medicalPagination() {
		Pagination pagination = new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(5);
		String listMedical = medicalService.medicalPagination(pagination);
		System.out.println(listMedical);
	}

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
		Medical medical = medicalService.findMedicalById("12");
		System.out.println(medical.getAttendingSurgeon() + "***");
	}

	@Test
	public void updateMedicalCententById() {
		Medical medical = medicalService.findMedicalById("12");
		medical.setContent("修改后的content");
		medicalService.updateMedicalById(medical);
	}

	@Test
	public void deleteMedicalById() {
		medicalService.deleteMedicalById("12");
	}

	@Test
	public void findAllPersonalInformationGetIdAndIdCardAndName() {
		String data = medicalService
				.findAllPersonalInformationGetIdAndIdCardAndName();
		System.out.println(data);
	}

	@Test
	public void findAllPersonalInformationAndType() {
		String data = medicalService.findAllPersonalInformationAndType();
		System.out.println(data);
	}

	@Test
	public void findPersonalInformationAndType() {
		MedicalExpand medicalExpand = medicalService
				.findPersonalInformationAndType("12");
		System.out.println(medicalExpand.getContent());
	}
}
