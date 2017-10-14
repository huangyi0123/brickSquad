package com.brick.squad.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.mapper.ShopActivitiesMapper;
import com.brick.squad.pojo.ShopActivities;
import com.brick.squad.service.ShopActivitiesService;

public class ShopActivitiesImpl implements ShopActivitiesService{

	@Autowired
	@Qualifier("shopActivitiesMapper")
	private ShopActivitiesMapper shopActivitiesMapper;
	
	@Override
	public ShopActivities findShopActivitiesById(String id) {
		// TODO Auto-generated method stub
		return shopActivitiesMapper.findShopActivitiesById(id);
	}

	@Override
	public void insertShopActivitiesById(String id) {
		// TODO Auto-generated method stub
		shopActivitiesMapper.insertShopActivities(id);
	}

	@Override
	public void delectShopActivitiesById(String id) {
		// TODO Auto-generated method stub
		shopActivitiesMapper.deleteShopActivities(id);
	}

	@Override
	public void updateShopActivitiesById(String id) {
		// TODO Auto-generated method stub
		shopActivitiesMapper.updateShopActivities(id);
	}

	
}
