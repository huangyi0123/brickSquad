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
		Region region = regionService.findRegionById("110105001");
		System.out.print(region);
	}
	@Test
	//根据Level字段查询
	public void testFindRegionByLevel() {
		String data=regionService.findRegionByLevel(2);
		System.out.print(data);
	}
	//插入字段的测试方法
	@Test
	public void testInsertRegionById() throws Exception{
		Region region = new Region();
		region.setId("8");
		region.setName("坤哥哥");
		region.setIsleaf(5);
		region.setPerantId("100");
		region.setLevel(0);
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
		Pagination pagination = new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(8);
		System.out.println(regionService.regionPagination(pagination));
	}
	@Test
	public void findRegionByParentId(){
		String data=regionService.findRegionByParentId("110101");
		System.out.println(data);
	}
	@Test
	public void findAllRegion(){
		String data=regionService.findAllRegion();
		System.out.println(data);
	}
}
