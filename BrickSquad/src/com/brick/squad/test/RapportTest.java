package com.brick.squad.test;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;

import com.brick.squad.pojo.Rapport;
import com.brick.squad.service.RapportService;
import com.brick.squad.util.JunitClassRunner;
import com.brick.squad.util.Pagination;

@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations = "classpath:com/brick/squad/config/applicationContext.xml")
public class RapportTest {
	@Autowired
	@Qualifier("rapportService")
	private RapportService rapportService;
	@Test
	public void findRapportById() throws Exception{
		Rapport rapport= rapportService.findRapportById("1");
		System.out.println(rapport);
	}
	@Test
	public void findRapport() throws Exception{
		List<Rapport> rapports= rapportService.findRapport();
		for(Rapport rapport:rapports){
		System.out.println(rapport.getRapportDate());
		}
	}
	@Test
	public void insertRapport() throws Exception{
		Rapport rapport=new Rapport();
		rapport.setContent("666666");
		rapport.setPerId("66666");
		rapport.setId("666");
		rapport.setRapportDate(new Date());
		rapport.setUserId("66666");
		rapport.setGoal("健康信息采集");
		rapport.setPeriod(66666f);
		rapportService.insertRapport(rapport);
	}
	@Test
	public void updateRapportByID() throws Exception{
		Rapport rapport=new Rapport();
		rapport.setContent("1");
		rapport.setId("1");
		rapport.setPerId("1");
		rapport.setRapportDate(new Date());
		rapport.setUserId("323");
		rapportService.updateRapportByID(rapport);
	}
	@Test
	public void deleteRapportById() throws Exception{
		rapportService.deleteRapportById("3");
	}
	@Test
	public void findRapportCount() throws Exception{
		Integer count=rapportService.findRapportCount();
		System.out.println(count);
	}
	@Test
	public void rapportCarPagination() throws Exception{
		Pagination pagination = new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(3);
		System.out.println(rapportService.rapportPagination(pagination));
	}
}
