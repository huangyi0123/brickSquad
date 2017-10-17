package com.brick.squad.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.ShopActivitiesMapper;
import com.brick.squad.pojo.ShopActivities;
import com.brick.squad.service.ShopActivitiesService;
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

	
}
