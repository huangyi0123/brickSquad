package com.brick.squad.test;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;

import com.brick.squad.mapper.PersonalInformationMapper;
import com.brick.squad.pojo.Guidance;
import com.brick.squad.service.GuidanceService;
import com.brick.squad.util.JunitClassRunner;
import com.brick.squad.util.Pagination;

@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations = "classpath:com/brick/squad/config/applicationContext.xml")
public class GuidanceServiceTest {
	@Autowired
	@Qualifier("guidanceService")
	private GuidanceService guidanceService;
	@Autowired
	@Qualifier("personalInformationMapper")
	private PersonalInformationMapper personalInformationMapper;
	@Test
	public void testInsertGuidance() throws Exception{
		Guidance guidance = new Guidance();
		guidance.setAssessment("008");
		guidance.setDisease("007");
		guidance.setGuidanceDate(new Date());
		guidance.setPerId("009");
		guidance.setSuggest("吴老狗");
		guidanceService.insertGuidanceById(guidance);
	}
	@Test
	public void testQueryGuidanceById() throws Exception{
		System.out.println(guidanceService.queryGuidanceById("5f82a01eb26911e78d4f5254002ec43c"));
	}
	@Test
	public void testDeleteGuidanceById() throws Exception{
		guidanceService.deleteGuidanceById("42b1c7fcb26511e78d4f5254002ec43c");
	}
	@Test
	public void testUpdateGuidanceById() throws Exception{
		Guidance guidance = guidanceService.queryGuidanceById("5f82a01eb26911e78d4f5254002ec43c");
		guidance.setAssessment("wocao");
		guidance.setDisease("520");
		guidance.setPerId("562400");
		guidance.setSuggest("wqnmmp");
		guidanceService.updateGuidanceById(guidance);
	}
	@Test
	public void testGuidancePagination() throws Exception{
		/*List<Guidance> lGuidances = new ArrayList<Guidance>();*/
		Pagination pagination = new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(5);
		/*lGuidances = guidanceService.guidancePagination(pagination);*/
		guidanceService.guidancePagination(pagination);
	}
	@Test
	public void testFindGuidanceAllCount() throws Exception{
		guidanceService.findGuidanceAllCount();
	}
	@Test 
	public void test(){
		guidanceService.findPerIdAndIdCard();
	}
}
