package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.pojo.OrderDetails;
import com.brick.squad.util.Pagination;

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
	/**
	 * 查询订单项总数
	 * */
	public Integer countOrderDetails();
	/**
	 * 分页查询订单项
	 * */
	public List<OrderDetails> orderDetailsPagination(Pagination pagination);
}

