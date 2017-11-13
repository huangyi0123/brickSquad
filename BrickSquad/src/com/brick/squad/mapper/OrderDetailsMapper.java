package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.expand.OrderDetailsExpand;
import com.brick.squad.pojo.OrderDetails;
import com.brick.squad.util.Pagination;

public interface OrderDetailsMapper {
	public void insertOrderDetails(OrderDetails orderDetails);

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

	/** 根据ID删除订单项 */
	public void deleteOrderDetails(String id);

	/**
	 * 查询订单项总数
	 * */
	public Integer countOrderDetails(Pagination pagination);

	/**
	 * 分页查询订单项
	 * */
	public List<OrderDetailsExpand> orderDetailsPagination(Pagination pagination);

	/**
	 * 根据id查询订单详情的信息
	 * 
	 * @param id
	 *            订单详情id
	 * @return 订单详情
	 */
	public OrderDetails findOrderDetailsByIdName(String id);
}
