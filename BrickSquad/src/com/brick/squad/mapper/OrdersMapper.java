package com.brick.squad.mapper;

import com.brick.squad.pojo.Orders;

public interface OrdersMapper {
	/*
	 * 根据id查询Orders订单
	 * */
	public Orders findOrdersById(String id);
	/*
	 * 订单的添加
	 * */
	public void insertOrders(Orders orders);
	/*
	 * 根据id修改订单状态
	 * */
	public void updateOrdersById(Orders orders);
	/*
	 * 根据ID删除订单
	 * */
	public void deleteOrdersById(String id);
}
