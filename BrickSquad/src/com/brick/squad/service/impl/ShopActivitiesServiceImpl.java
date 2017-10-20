package com.brick.squad.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.ShopActivitiesMapper;
import com.brick.squad.pojo.Reply;
import com.brick.squad.pojo.ShopActivities;
import com.brick.squad.service.ShopActivitiesService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Util;
@Transactional
public class ShopActivitiesServiceImpl implements ShopActivitiesService{

	@Autowired
	@Qualifier("shopActivitiesMapper")
	private ShopActivitiesMapper shopActivitiesMapper;
	
	@Override
	public ShopActivities findShopActivitiesById(String id) {
		// TODO Auto-generated method stub
		return shopActivitiesMapper.findShopActivitiesById(id);
	}

	@Override
	public void insertShopActivitiesById(ShopActivities shopActivities) throws Exception {
		// TODO Auto-generated method stub
		shopActivitiesMapper.insertShopActivitiesById(shopActivities);
	}

	@Override
	public void delectShopActivitiesById(String id) throws Exception {
		shopActivitiesMapper.deleteShopActivities(id);
		
	}

	@Override
	public void updateShopActivitiesById(ShopActivities shopActivities) throws Exception {
		shopActivitiesMapper.updateShopActivitiesById(shopActivities);
		
	}

	@Override
	public String shopActivitiesPagination(Pagination pagination) {
		List<ShopActivities> shopActivities = shopActivitiesMapper.shopActivitiesPagination(pagination);
		int row = shopActivitiesMapper.findShopActivitiesAllCount();
		Util<ShopActivities> util = new Util<ShopActivities>();
		String data = util.SplitPage(shopActivities, row);
		return data;
	}

	@Override
	public int findShopActivitiesAllCount() {
		// TODO Auto-generated method stub
		return shopActivitiesMapper.findShopActivitiesAllCount();
	}

	@Override
	public String findAllShopActivities() {
		return null;
	}

	@Override
	public String findShopActivitiesByParentId(String parentId) {
		// TODO Auto-generated method stub
		return null;
	}

	
}
