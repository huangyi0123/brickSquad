package com.brick.squad.test;


import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.Region;
import com.brick.squad.service.RegionService;
import com.brick.squad.util.JunitClassRunner;
import com.brick.squad.util.Pagination;
@RunWith(JunitClassRunner.class)
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
	//根据id查找修改
	@Test
	public void testupdateRegion() throws Exception{
		Region region = regionService.findRegionById("4");		
		region.setName("007");
		regionService.updateRegion(region);
	}
	@Test
	public void testdeleteRegionById() throws Exception{
		regionService.deleteRegionById("4");
	}
	//分页查询
	@Test
	public void testRegionPagination() throws Exception{
		List<Region> listRegions = new ArrayList<Region>();
		Pagination pagination = new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(8);
		listRegions = regionService.regionPagination(pagination);
	}
}
