package com.brick.squad.test;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;

import com.brick.squad.pojo.HealthRecords;
import com.brick.squad.pojo.Rated;
import com.brick.squad.service.HealthRecordsService;
import com.brick.squad.util.JunitClassRunner;
import com.brick.squad.util.Pagination;

@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations = "classpath:com/brick/squad/config/applicationContext.xml")
public class HealthRecordsServiceTest {

	@Autowired
	@Qualifier("healthRecordsService")
	private HealthRecordsService healthRecordsService;
	@Test
	public void findHealthRecordsAllCount(){
		System.out.println(healthRecordsService.findHealthRecordsAllCount());
	}
	@Test
	public void healthRecordsratedPaginationTest(){
		Pagination pagination =new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(5);
		String healthRecordslist =healthRecordsService.healthRecordsPagination(pagination); 
		
		
	}
	
	
	@Test
	public void findHealthRecordsByIdTest() {
		HealthRecords healthRecords = healthRecordsService
				.findHealthRecordsById("478f8fd4b26f11e78d4f5254002ec43c");
		System.out.println(healthRecords+"****");
	}

	@Test
	public void updateHealthRecordsByIdTest() {
		
		HealthRecords healthRecords = new HealthRecords();
		healthRecords.setId("46fa08a6b26f11e78d4f5254002ec43c");
		healthRecords.setBloodPressure("修改后的BloodPressure");
		
		healthRecordsService.updateHealthRecordsById(healthRecords);

		
	}
	
	@Test
	public void deleteHealthRecordsByIdTest() {

		healthRecordsService
				.deleteHealthRecordsById("48b79320b26f11e78d4f5254002ec43c");
	}

	@Test
	public void insertHealthRecords() {
		for (int i = 0; i < 10; i++) {
			HealthRecords healthRecords = new HealthRecords();
			healthRecords.setPerId("perId" + i);
			healthRecords.setUserId("setUserId" + i);
			healthRecords.setBloodPressure("BloodPressure" + i);
			healthRecords.setConclusionSuggestion("testConclusionSuggestion"
					+ i);
			healthRecords.setDangerousTips("DangerousTips" + i);
			healthRecords.setDietSituation("setDietSituation" + i);
			healthRecords.setEmotionControl("setEmotionControl" + i);
			healthRecords.setEvaluate("setEvaluate+i" + i);
			healthRecords.setHealthAssessment("setHealthAssessment" + i);
			healthRecords.setRegistrDate(new Date());
			healthRecords.setShape("shape" + i);
			healthRecords.setThrombus("thrombus" + i);
			healthRecords.setSportsSituation("paobu" + i);
			healthRecords.setDiseaseId("diseaseId" + i);

			healthRecordsService.insertHealthRecords(healthRecords);
		}
	}
}
