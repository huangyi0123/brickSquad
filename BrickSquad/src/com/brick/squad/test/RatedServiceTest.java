package com.brick.squad.test;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.enterprise.inject.New;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.Rated;
import com.brick.squad.service.RatedService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.SecurityUtil;
import com.brick.squad.util.Util;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:com/brick/squad/config/applicationContext.xml")
public class RatedServiceTest {
	@Autowired
	@Qualifier("ratedService")
	private RatedService ratedService;
	@Test
	public void findRatedAllCount(){
		System.out.println(ratedService.findReplyAllCount());
	}
		
	@Test
	public void ratedPagination(){
		Pagination pagination =new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(5);
		List<Rated> listRateds =ratedService.ratedPagination(pagination);
		for (Rated rated : listRateds) {
			System.out.println(rated.toString());
		}
		
	}
	
	
	/**
	 * 测试Rated的根据ID查询方法
	 */
	@Test
	public void testfindRatedById() {
		Rated rated = ratedService
				.findRatedById("29dc1a73aff011e7ae5d8cdcd49043a9");
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(
				"yyyy-MM-dd hh:mm:ss:SSS");
		System.out.println("**" + rated.getCentent()
				+ simpleDateFormat.format(rated.getRatedDate()));
	}
	/**
	 * 测试Rated的插入方法
	 */
	@Test
	public void testinsertRated() {
		Rated rated = new Rated();
		rated.setOrderId(UUID.randomUUID().toString());
		rated.setRatedDate(new Date());
		rated.setCentent("测试" + UUID.randomUUID().toString());
		ratedService.insertRated(rated);
	}
	/**
	 * 测试Rated的删除方法
	 */
	@Test
	public void deleteRatedById() {
		ratedService.deleteRatedById("11");
	}
	/**
	 * 测试Rated的根据ID修改centent方法
	 */
	@Test
	public void updateRatedCententById(){
		Rated rated = new Rated();
		rated.setCentent("修改后的内容");
		rated.setId("1154");
		ratedService.updateRatedCententById(rated);
	}
}
