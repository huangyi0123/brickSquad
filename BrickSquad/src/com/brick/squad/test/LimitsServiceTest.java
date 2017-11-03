package com.brick.squad.test;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;

import com.brick.squad.mapper.LimitsMapper;
import com.brick.squad.pojo.Limits;
import com.brick.squad.service.LimitsService;
import com.brick.squad.util.JunitClassRunner;
import com.brick.squad.util.Pagination;

@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations = "classpath:com/brick/squad/config/applicationContext.xml")
public class LimitsServiceTest {
	@Autowired
	@Qualifier("limitsService")
	private LimitsService limitsService;
	@Autowired
	@Qualifier("limitsMapper")
	private LimitsMapper limitsMapper;

	@Test
	public void testFindLimitsById() {
		System.out.println(limitsService.findLimitsById("b97a0794b0aa11e78d4f5254002ec43c").isAd());
	}

	@Test
	public void testInsertLimits() {

		try {
			Limits limits=new Limits();
			limits.setRoleId("001");
			limits.setTablename("user");
			limits.setAd(true);
			limits.setDl(false);
			limits.setQuery(true);
			limits.setUp(false);
			limitsService.insertLimits(limits);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Test
	public void testUpdateLimitsById() {
		Limits limits=limitsService.findLimitsById("66741fd4bf7411e7aca65254002ec43c");
		limits.setAd(true);
		limitsService.updateLimitsById(limits);
	}

	@Test
	public void testDeleteLimitsById() {
		limitsService.deleteLimitsById("12");
	}
	@Test
	public void testLimitsPagination() {
		Pagination pagination=new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(5);
		System.out.println(limitsService.limitsPagination(pagination));
	}
	@Test
	public void testFindAllTableName() {
		System.out.println(limitsService.findAllTableName("1"));
	}
	@Test
	public void updateLimitsByRoleId(){
		List<Limits> list=new ArrayList<Limits>();
		Limits limits=limitsService.findLimitsById("de6ba706bf6911e7aca65254002ec43c");
		limits.setTablename("xiaobiao");
		list.add(limits);
		limitsService.updateLimitsByRoleId(list, limits.getRoleId());
	}
	@Test
	public void findAllLimitsByRoleId(){
		Map<String , Limits> map=limitsService.findAllLimitsByRoleId("12");
		for(Map.Entry<String, Limits>  entry:map.entrySet()){
			System.out.println("key:"+entry.getKey()+"=====value:"+entry.getValue().getTablename());
		}
	}
}
