package com.brick.squad.service;

import java.util.List;

import com.brick.squad.pojo.Orders;
import com.brick.squad.util.Pagination;

/**
 * 订单业务层接口
 */
public interface OrdersService {
	/*根据订单id查询订单信息*/
	public Orders findOrdersById(String id) throws Exception;
	/**
	 * 订单的添加
	 * */
	public void insertOrders(Orders orders)throws Exception;
	/**
	 * 根据id修改订单状态
	 * */
	public void updateOrdersById(Orders orders)throws Exception;
	/**
	 * 业务层根据ID删除订单
	 * */
	public void deleteOrdersById(String id)throws Exception;
	/**
	 * 查询订单所有信息
	 * */
	public String findOrders()throws Exception;
	/**
	 * 查询订单总数
	 * */
	public Integer findOrdersCount()throws Exception;
	/**
	 * 订单分页查询
	 * */
	public String ordersPagination(Pagination pagination)throws Exception;
}
