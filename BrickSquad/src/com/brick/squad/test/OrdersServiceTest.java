package com.brick.squad.test;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.Orders;
import com.brick.squad.pojo.Region;
import com.brick.squad.service.OrdersService;
import com.brick.squad.util.JunitClassRunner;
import com.brick.squad.util.Pagination;

@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations = "classpath:com/brick/squad/config/applicationContext.xml")
public class OrdersServiceTest {
	@Autowired
	@Qualifier("ordersService")
	private OrdersService ordersService;
	@Test
	public void findOrdersById() throws Exception {
		Orders orders=ordersService.findOrdersById("1");
		System.out.println(orders);
	}
	@Test
	public void insertOrders() throws Exception{
		Orders orders=new Orders();
		orders.setId("2");
		orders.setNo("2");
		orders.setNumber(32);
		orders.setProductionDate(new Date());
		orders.setStateId("2");
		orders.setMoney(2212f);
		orders.setBuyId("4");
		ordersService.insertOrders(orders);
	}
	@Test
	public void updateOrdersById() throws Exception{
		Orders orders=ordersService.findOrdersById("1");
		orders.setStateId("3");
		ordersService.updateOrdersById(orders);
	}
	@Test
	public void deleteOrdersById() throws Exception{
		ordersService.deleteOrdersById("2");
	}
	@Test
	public void findOrders() throws Exception{
		List<Orders> orders=ordersService.findOrders();
		for(Orders order:orders){
			System.out.println(order);
		}
	}
	@Test
	public void findOrdersCount() throws Exception{
		Integer ordersCount=ordersService.findOrdersCount();
		System.out.println(ordersCount);
	}
	@Test
	public void ordersPagination() throws Exception{
		Pagination pagination = new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(3);
		System.out.println(ordersService.ordersPagination(pagination));
	}
	
}
