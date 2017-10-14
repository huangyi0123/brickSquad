package com.brick.squad.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.OrdersMapper;
import com.brick.squad.pojo.Orders;
import com.brick.squad.service.OrdersService;
/**
 * 订单业务层接口实现接口
 * */
@Transactional
public class OrdersServiceImpl implements OrdersService{
	@Autowired
	@Qualifier("ordersMapper")
	private OrdersMapper ordersMapper;
	@Override
	/**业务层根据订单id查询商品*/
	public Orders findOrdersById(String id) throws Exception {
		Orders orders=ordersMapper.findOrdersById(id);
		return orders;
	}
	@Override
	/**业务层订单的添加*/
	public void insertOrders(Orders orders) throws Exception{
		ordersMapper.insertOrders(orders);
	}
	@Override
	/**业务层根据订单id修改订单状态*/
	public void updateOrdersById(Orders orders) throws Exception{
		ordersMapper.updateOrdersById(orders);
	}
	@Override
	/**业务层根据订单ID删除订单*/
	public void deleteOrdersById(String id) throws Exception {
		ordersMapper.deleteOrdersById(id);
	}
	@Override
	/**查询所有订单信息*/
	public List<Orders> findOrders() throws Exception {
		List<Orders> orders=ordersMapper.findOrders();
		return orders;
	}
	
}
