package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.expand.OrdersExpand;
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
	public Integer findOrdersCount(Pagination pagination);
	/**
	 * Orders订单分页查询
	 * */
	public List<OrdersExpand> ordersPagination(Pagination pagination);
	/**
	 * 查询Orders关联buyser买家和PersonalInformation老人姓名
	 * */
	public OrdersExpand findBuyserAndPersonalInformation(String id);
	/**
	 * 查询订单所有信息关联查询出买家名字
	 * */
	public OrdersExpand findOrdersAndBuyserById(String id);
}
