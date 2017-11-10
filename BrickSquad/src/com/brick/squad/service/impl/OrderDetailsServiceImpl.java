package com.brick.squad.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.expand.OrderDetailsExpand;
import com.brick.squad.mapper.OrderDetailsMapper;
import com.brick.squad.pojo.OrderDetails;
import com.brick.squad.service.OrderDetailsService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Util;

/**
 * 业务层：订单项Service接口的实现类
 * */
@Transactional
public class OrderDetailsServiceImpl implements OrderDetailsService {
	@Autowired
	@Qualifier("orderDetailsMapper")
	private OrderDetailsMapper orderDetailsMapper;

	@Override
	/**查询订单项*/
	public List<OrderDetails> findOrderDetails() throws Exception {
		List<OrderDetails> orderDetails = orderDetailsMapper.findOrderDetails();
		return orderDetails;
	}

	@Override
	/**根据ID查询订单项*/
	public OrderDetails findOrderDetailsById(String id) throws Exception {
		OrderDetails orderDetails = orderDetailsMapper.findOrderDetailsById(id);
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

	@Override
	/**查询订单项总数*/
	public Integer countOrderDetails(Pagination pagination) throws Exception {
		Integer countOrderDetails = orderDetailsMapper
				.countOrderDetails(pagination);
		return countOrderDetails;
	}

	@Override
	/**分页查询订单项*/
	public String orderDetailsPagination(Pagination pagination) {
		List<OrderDetailsExpand> regions = orderDetailsMapper
				.orderDetailsPagination(pagination);
		int row = orderDetailsMapper.countOrderDetails(pagination);
		Util<OrderDetailsExpand> util = new Util<OrderDetailsExpand>();
		String data = util.SplitPage(regions, row);
		return data;
	}

	@Override
	public OrderDetails findOrderDetailsByIdName(String id) {
		return orderDetailsMapper.findOrderDetailsByIdName(id);
	}

}
