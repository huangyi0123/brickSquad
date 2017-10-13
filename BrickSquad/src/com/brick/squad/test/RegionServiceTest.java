package com.brick.squad.test;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.Region;
import com.brick.squad.service.RegionService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:com/brick/squad/config/applicationContext.xml")
public class RegionServiceTest {
	@Autowired
	@Qualifier("regionService")
	private RegionService regionService;
	@Test
	public void testFindRegionById() throws Exception{
		Region region = regionService.findRegionById("4");
		System.out.print(region);
	}
	@Test
	//根据Level字段查询
	public void testFindRegionByLevel() {
		
		regionService.findRegionByLevel(2);
		System.out.print(regionService);
	}
	//插入字段的测试方法
	@Test
	public void testInsertRegionById() throws Exception{
		Region region = new Region();
		region.setId("4");
		region.setName("坤哥哥");
		region.setIsleaf(5);
		region.setPerantId("100");
		regionService.insertRegionById(region);
	}
	@Test
	public void testupdateRegion() throws Exception{
		Region region = regionService.findRegionById("4");
		region.setName("灵梦");
		regionService.updateRegion(region);
	}

}
