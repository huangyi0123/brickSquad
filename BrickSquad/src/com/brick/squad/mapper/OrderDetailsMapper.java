package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.pojo.OrderDetails;

public interface OrderDetailsMapper {
	/**
	 * 查询订单项
	 * */
	public List<OrderDetails> findOrderDetails();
	/**
	 * 根据ID查询订单项
	 * */
	public OrderDetails findOrderDetailsById(String id);
	/**
	 * 根据ID修改订单项
	 * */
	public void updateOrderDetails(OrderDetails orderDetails);
	/**根据ID删除订单项*/
	public void deleteOrderDetails(String id);
}

