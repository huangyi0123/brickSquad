package com.brick.squad.test;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;

import com.brick.squad.pojo.OrderRated;
import com.brick.squad.pojo.Rated;
import com.brick.squad.service.RatedService;
import com.brick.squad.util.JunitClassRunner;
import com.brick.squad.util.Pagination;

@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations = "classpath:com/brick/squad/config/applicationContext.xml")
public class RatedServiceTest {
	@Autowired
	@Qualifier("ratedService")
	private RatedService ratedService;

	/**
	 * 根据商品ID查询该商品所有评论 articleId 商品ID
	 */
	@Test
	public void findOrderRatedByArticleIdTest() {
		String articleId = "263aa23ac46f11e7aca65254002ec43c";
		List<OrderRated> orderRateds = ratedService
				.findOrderRatedByArticleId(articleId);
		for (OrderRated orderRated : orderRateds) {
			System.out.println(orderRated.toString());
		}
	}

	/*
	 * @Test public void findRatedAllCount(){
	 * System.out.println(ratedService.findReplyAllCount()); }
	 */

	@Test
	public void ratedPagination() {
		Pagination pagination = new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(5);
		String listRateds = ratedService.ratedPagination(pagination);
		System.out.println(listRateds);

	}

	/**
	 * 测试Rated的根据ID查询方法
	 */
	@Test
	public void testfindRatedById() {
		Rated rated = ratedService
				.findRatedById("fedac162b47311e78d4f5254002ec43c");
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
		ratedService.deleteRatedById("0fb0387eb47811e78d4f5254002ec43c");
	}

	/**
	 * 测试Rated的根据ID修改centent方法
	 */
	@Test
	public void updateRatedCententById() {
		Rated rated = new Rated();
		rated.setCentent("修改后的内容");
		rated.setId("fedac162b47311e78d4f5254002ec43c");
		ratedService.updateRatedCententById(rated);
	}

	@Test
	public void findAllRated() {
		String data = ratedService.findAllRated();
		System.out.println(data);
	}
}
