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
	public void insertShopActivitiesById(String id) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delectShopActivitiesById(String id) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateShopActivitiesById(String id) throws Exception {
		// TODO Auto-generated method stub
		
	}

	
}
