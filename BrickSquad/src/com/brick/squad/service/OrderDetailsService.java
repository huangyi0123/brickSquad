package com.brick.squad.service;

import java.util.List;

import com.brick.squad.pojo.OrderDetails;
/**
 * 业务层：订单项的Service接口
 * */
public interface OrderDetailsService {
	/**
	 * 查询订单项
	 * */
	public List<OrderDetails> findOrderDetails()throws Exception;
	/**
	 * 根据ID查询订单项
	 * */
	public OrderDetails findOrderDetailsById(String id) throws Exception;
	/**
	 * 根据ID修改订单项
	 * */
	public void updateOrderDetails(OrderDetails orderDetails)throws Exception;
	/**根据ID删除订单项*/
	public void deleteOrderDetails(String id) throws Exception;
}