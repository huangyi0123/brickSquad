package com.brick.squad.service.impl;


import java.util.List;










import javax.json.JsonArray;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.expand.OrdersExpand;
import com.brick.squad.mapper.OrdersMapper;
import com.brick.squad.pojo.Orders;
import com.brick.squad.service.OrdersService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Util;
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
	public String findOrders() throws Exception {
		List<Orders> orders=ordersMapper.findOrders();
		JSONArray jsonArray = new JSONArray();
		String ordersdata =jsonArray.fromObject(orders).toString();
		return ordersdata;
	}
	@Override
	/**查询订单总数*/
	public Integer findOrdersCount() throws Exception {
		Integer ordersCount=ordersMapper.findOrdersCount();
		return ordersCount;
	}
	@Override
	/**订单分页查询*/
	public String ordersPagination(Pagination pagination)
			throws Exception {
		List<OrdersExpand> orders=ordersMapper.ordersPagination(pagination);
		int row=ordersMapper.findOrdersCount();
		Util<OrdersExpand> util=new Util<OrdersExpand>();
		String data=util.SplitPage(orders, row);
		return data;
	}
	/**
	 * 查询Orders关联buyser买家和PersonalInformation老人姓名
	 * */
	@Override
	public OrdersExpand findBuyserAndPersonalInformation(String id) throws Exception {
		OrdersExpand ordersName=ordersMapper.findBuyserAndPersonalInformation(id);
		return ordersName;
	}
	/**
	 * 查询订单所有信息关联查询出买家名字
	 * */
	@Override
	public OrdersExpand findOrdersAndBuyserById(String id) throws Exception {
		OrdersExpand ordersExpand=ordersMapper.findOrdersAndBuyserById(id);
		return ordersExpand;
	}
	
}
