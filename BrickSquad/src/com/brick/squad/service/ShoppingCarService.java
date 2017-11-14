package com.brick.squad.service;

import java.util.List;
import java.util.Map;

import com.brick.squad.expand.ShoppingCarAndArticle;
import com.brick.squad.expand.ShoppingCarExpand;
import com.brick.squad.pojo.Article;
import com.brick.squad.pojo.ShoppingCar;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.ShoppingCarPagination;

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

	/**
	 * 查询购物车总数
	 * */
	// public Integer findShoppingCarCount()throws Exception;
	/**
	 * 购物车分页查询
	 * */
	public String shoppingCarPagination(Pagination pagination) throws Exception;

	/**
	 * 查询购物车关联查询到的需要字段：商品信息字段，老人信息字段
	 * */
	public String findArticleAndPersonalInformation() throws Exception;

	/**
	 * 查询购物车详细信息，关联查询到老人姓名与商品名称
	 * */
	public ShoppingCarExpand findShoppingCarAndUserAndPsersonalInformationById(
			String id) throws Exception;

	/**
	 * 根据购物车商品ID查询购物车列表商品
	 * */
	public List<ShoppingCar> AddShoppingCarByArticleId(String articleId)throws Exception;

	public Map<String, Object> findArticIdAllArtic(ShoppingCarPagination shoppingCarPagination);
	public Integer findShoppingCarPerIdCount(ShoppingCarPagination shoppingCarPagination);
	/**
	 * 根据用户id及购物车id关系购物车时商品数量并返回购物车总额
	 * @param shoppingCar 修改信息
	 * @return 购物车总额
	 */
	public float updateShoppingNumber(ShoppingCar shoppingCar);
}
