package com.brick.squad.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.OrderDetails;
import com.brick.squad.service.OrderDetailsService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:com/brick/squad/config/applicationContext.xml")
public class OrderDetailsServiceTest {
	@Autowired
	@Qualifier("orderDetailsService")
	private OrderDetailsService orderDetailsService;
	@Test
	public void findOrderDetails() throws Exception{
		List<OrderDetails> orderDetails=orderDetailsService.findOrderDetails();
		for(OrderDetails orderDetail:orderDetails){
			System.out.println(orderDetail);
		}
	}
	@Test
	public void findOrderDetailsById() throws Exception{
		OrderDetails orderDetail=orderDetailsService.findOrderDetailsById("1");
		System.out.println(orderDetail);
	}
	@Test
	public void updateOrderDetails() throws Exception{
		OrderDetails orderDetail=orderDetailsService.findOrderDetailsById("1");
		orderDetail.setArticleId("4");
		orderDetail.setNumber(5657);
		orderDetail.setOrdersId("4");
		orderDetail.setSubtotal(444f);
		orderDetailsService.updateOrderDetails(orderDetail);
	}
	@Test
	public void deleteOrderDetails() throws Exception{
		orderDetailsService.deleteOrderDetails("2");
	}
}
