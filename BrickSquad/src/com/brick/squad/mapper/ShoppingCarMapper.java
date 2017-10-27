package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.expand.ShoppingCarExpand;
import com.brick.squad.pojo.ShoppingCar;
import com.brick.squad.util.Pagination;

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
	/**
	 * 查询购物车总数
	 * */
	public Integer findShoppingCarCount(Pagination pagination);
	/**
	 * 购物车分页查询
	 * */
	public List<ShoppingCarExpand> shoppingCarPagination(Pagination pagination);
	/**
	 * 查询购物车关联查询到的需要字段：商品信息字段，老人信息字段
	 * */
	public String findArticleAndPersonalInformation()throws Exception;
	/**
	 * 查询购物车详细信息，关联查询到老人姓名与商品名称
	 * */
	public ShoppingCarExpand findShoppingCarAndUserAndPsersonalInformationById(String id);
	
}
