package com.brick.squad.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.mapper.ShoppingCarMapper;
import com.brick.squad.pojo.Orders;
import com.brick.squad.pojo.ShoppingCar;
import com.brick.squad.service.ShoppingCarService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Util;

/**
 * 业务层：实现购物车接口类
 * */
public class ShoppingCarServiceImpl implements ShoppingCarService {
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

	@Override
	/**查询购物车所有信息*/
	public List<ShoppingCar> findShoppingCar() throws Exception {
		List<ShoppingCar> shoppingCars = shoppingCarMapper.findShoppingCar();
		return shoppingCars;
	}

	@Override
	/**查询购物车总数*/
	public Integer findShoppingCarCount() throws Exception {
		Integer countShoppingCar=shoppingCarMapper.findShoppingCarCount();
		return countShoppingCar;
	}

	@Override
	/**分页查询购物车*/
	public String shoppingCarPagination(Pagination pagination)
			throws Exception {
		List<ShoppingCar> regions=shoppingCarMapper.shoppingCarPagination(pagination);
		int row=shoppingCarMapper.findShoppingCarCount();
		Util<ShoppingCar> util=new Util<ShoppingCar>();
		String data=util.SplitPage(regions, row);
		return data;
	}

}
