package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.pojo.ShoppingCar;

public interface ShoppingCarMapper {
	/**
	 * 根据ID查询购物车
	 * */
	public ShoppingCar findShoppingCarById(String id);
	/**
	 * 添加购物车
	 * */
	public void insertShoppingCar(ShoppingCar shoppingCar);
	/**
	 * 根据ID删除购物车
	 * */
	public void deleteShoppingCarById(String id);
	/**
	 * 根据ID修改购物车
	 * */
	public void updateShoppingCarById(ShoppingCar shoppingCar);

	/**
	 * 查询购物车所有信息
	 * */
	public List<ShoppingCar> findShoppingCar();
}
