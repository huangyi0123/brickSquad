package com.brick.squad.service;

import com.brick.squad.pojo.ShoppingCar;

/**
 * 业务层:购物车
 * */
public interface ShoppingCarService {
	/**
	 * 购物车查询
	 * */
	 public ShoppingCar findShoppingCarById(String id)throws Exception;
	 /**
	  * 添加购物车
	  * */
	public void insertShoppingCar(ShoppingCar shoppingCar)throws Exception;
	/**
	 * 根据ID删除购物车
	 * */
	public void deleteShoppingCarById(String id)throws Exception;
	/**
	 * 根据ID修改购物车
	 * */
	public void updateShoppingCarById(ShoppingCar shoppingCar)throws Exception;
}
