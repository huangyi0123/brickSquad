package com.brick.squad.service;

import java.util.List;

import com.brick.squad.pojo.ShoppingCar;

/**
 * 业务层:购物车
 * */
public interface ShoppingCarService {
	/**
	 * 根据ID查询购物车
	 * */
	public ShoppingCar findShoppingCarById(String id) throws Exception;

	/**
	 * 添加购物车
	 * */
	public void insertShoppingCar(ShoppingCar shoppingCar) throws Exception;

	/**
	 * 根据ID删除购物车
	 * */
	public void deleteShoppingCarById(String id) throws Exception;

	/**
	 * 根据ID修改购物车
	 * */
	public void updateShoppingCarById(ShoppingCar shoppingCar) throws Exception;

	/**
	 * 查询购物车所有信息
	 * */
	public List<ShoppingCar> findShoppingCar() throws Exception;
}
