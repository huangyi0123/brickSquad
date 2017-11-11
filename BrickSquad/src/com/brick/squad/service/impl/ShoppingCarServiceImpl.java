package com.brick.squad.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.expand.ShoppingCarAndArticle;
import com.brick.squad.expand.ShoppingCarExpand;
import com.brick.squad.mapper.ArticleMapper;
import com.brick.squad.mapper.PersonalInformationMapper;
import com.brick.squad.mapper.ShoppingCarMapper;
import com.brick.squad.pojo.Article;
import com.brick.squad.pojo.ShoppingCar;
import com.brick.squad.service.ShoppingCarService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;
import com.brick.squad.util.ShoppingCarPagination;
import com.brick.squad.util.Util;

/**
 * 业务层：实现购物车接口类
 * */
public class ShoppingCarServiceImpl implements ShoppingCarService {
	@Autowired
	@Qualifier("shoppingCarMapper")
	private ShoppingCarMapper shoppingCarMapper;
	@Autowired
	@Qualifier("articleMapper")
	private ArticleMapper articleMapper;
	@Autowired
	@Qualifier("personalInformationMapper")
	private PersonalInformationMapper personalInformationMapper;
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

	/*@Override
	*//**查询购物车总数*//*
	public Integer findShoppingCarCount() throws Exception {
		Integer countShoppingCar=shoppingCarMapper.findShoppingCarCount();
		return countShoppingCar;
	}*/

	@Override
	/**分页查询购物车*/
	public String shoppingCarPagination(Pagination pagination)
			throws Exception {
		List<ShoppingCarExpand> regions=shoppingCarMapper.shoppingCarPagination(pagination);
		int row=shoppingCarMapper.findShoppingCarCount(pagination);
		Util<ShoppingCarExpand> util=new Util<ShoppingCarExpand>();
		String data=util.SplitPage(regions, row);
		return data;
	}
	@Override
	/**
	 * 查询购物车，关联到商品和老人信息的字段
	 * */
	public String findArticleAndPersonalInformation()throws Exception{
		List<Select> articles=articleMapper.findArticle();
		List<Select> personalInformations=personalInformationMapper.findAllPersonalInformation();
		Map<String, List> map=new HashMap<String,List>();
		map.put("article", articles);
		map.put("personalInformation", personalInformations);
		JSONArray jsonArray=new JSONArray();
		String data=jsonArray.fromObject(map).toString();
		return data;
	}

	@Override
	/**查询购物车详细信息，关联查询到老人姓名与商品名称*/
	public ShoppingCarExpand findShoppingCarAndUserAndPsersonalInformationById(
			String id) throws Exception {
		ShoppingCarExpand shoppingCarExpand=shoppingCarMapper.findShoppingCarAndUserAndPsersonalInformationById(id);
		return shoppingCarExpand;
	}
	/**
	 * 根据老人id查询出相应的信息，分页显示
	 */
	@Override
	public  Map<String, Object> findArticIdAllArtic(ShoppingCarPagination shoppingCarPagination) {
		Map<String, Object> map=new HashMap<String, Object>();
		
		List<ShoppingCarAndArticle> list =shoppingCarMapper.findArticIdAllArtic(shoppingCarPagination);
		map.put("list", list);
		int n =shoppingCarMapper.findShoppingCarPerIdCount(shoppingCarPagination); 
		shoppingCarPagination.setCount(n);
		map.put("shoppingCarPagination", shoppingCarPagination);
		return map;
	}

	@Override
	public Integer findShoppingCarPerIdCount(ShoppingCarPagination shoppingCarPagination) {
		// TODO Auto-generated method stub
		int row = shoppingCarMapper.findShoppingCarPerIdCount(shoppingCarPagination);
		return row;
	}
}
