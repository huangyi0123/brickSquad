package com.brick.squad.service.impl;


import java.util.List;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.OrdersMapper;
import com.brick.squad.pojo.Orders;
import com.brick.squad.pojo.Region;
import com.brick.squad.service.OrdersService;
import com.brick.squad.util.GridManagerList;
import com.brick.squad.util.Pagination;
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
		GridManagerList<Orders> gridManagerList=new GridManagerList<Orders>();
		List<Orders> orders=ordersMapper.ordersPagination(pagination);
		gridManagerList.setStatus("success");
		gridManagerList.setData(orders);
		gridManagerList.setTotals(ordersMapper.findOrdersCount());
		JSONArray jsonArray=JSONArray.fromObject(gridManagerList);
		String data=jsonArray.toString();
		data=data.substring(1,data.length()-1);
		return data;
	}
	
}
