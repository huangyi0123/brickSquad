package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.pojo.Orders;
import com.brick.squad.util.Pagination;

public interface OrdersMapper {
	/*
	 * 根据id查询Orders订单
	 * */
	public Orders findOrdersById(String id);
	/**
	 * 查询订单所有信息
	 * */
	public List<Orders> findOrders();
	/**
	 * 订单的添加
	 * */
	public void insertOrders(Orders orders);
	/**
	 * 根据id修改订单状态
	 * */
	public void updateOrdersById(Orders orders);
	/**
	 * 根据ID删除订单
	 * */
	public void deleteOrdersById(String id);
	/**
	 * 查询订单总数
	 * */
	public Integer findOrdersCount();
	/**
	 * Orders订单分页查询
	 * */
	public List<Orders> ordersPagination(Pagination pagination);
	
}
