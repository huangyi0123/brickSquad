package com.brick.squad.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.mapper.ShoppingCarMapper;
import com.brick.squad.pojo.ShoppingCar;
import com.brick.squad.service.ShoppingCarService;
/**
 * 业务层：实现购物车接口类
 * */
public class ShoppingCarServiceImpl implements ShoppingCarService{
	@Autowired
	@Qualifier("shoppingCarMapper")
	private ShoppingCarMapper shoppingCarMapper;
	@Override
	/**根据ID查询购物车*/
	public ShoppingCar findShoppingCarById(String id) throws Exception {
		return shoppingCarMapper.findShoppingCarById(id);
	}
	@Override
	/**添加购物车*/
	public void insertShoppingCar(ShoppingCar shoppingCar) throws Exception {
		shoppingCarMapper.insertShoppingCar(shoppingCar);
	}
	@Override
	/**根据ID删除购物车*/
	public void deleteShoppingCarById(String id) throws Exception {
		shoppingCarMapper.deleteShoppingCarById(id);
	}
	@Override
	/**根据ID修改购物车*/
	public void updateShoppingCarById(ShoppingCar shoppingCar) throws Exception {
		shoppingCarMapper.updateShoppingCarById(shoppingCar);
	}


}
