package com.brick.squad.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.OrderDetailsMapper;
import com.brick.squad.pojo.OrderDetails;
import com.brick.squad.service.OrderDetailsService;
/**
 * 业务层：订单项Service接口的实现类
 * */
@Transactional
public class OrderDetailsServiceImpl implements OrderDetailsService{
	@Autowired
	@Qualifier("orderDetailsMapper")
	private OrderDetailsMapper orderDetailsMapper;
	@Override
	/**查询订单项*/
	public List<OrderDetails> findOrderDetails() throws Exception {
		List<OrderDetails> orderDetails=orderDetailsMapper.findOrderDetails();
		return orderDetails;
	}
	@Override
	/**根据ID查询订单项*/
	public OrderDetails findOrderDetailsById(String id) throws Exception{
		OrderDetails orderDetails=orderDetailsMapper.findOrderDetailsById(id);
		return orderDetails;
				
	}
	@Override
	/**根据ID修改订单项*/
	public void updateOrderDetails(OrderDetails orderDetails) throws Exception {
		orderDetailsMapper.updateOrderDetails(orderDetails);
	}
	@Override
	/**根据ID删除订单项*/
	public void deleteOrderDetails(String id) throws Exception {
		orderDetailsMapper.deleteOrderDetails(id);
	}

}
