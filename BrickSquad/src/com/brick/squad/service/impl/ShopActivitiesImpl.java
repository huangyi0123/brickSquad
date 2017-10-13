package com.brick.squad.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.service.ShopActivities;

public class ShopActivitiesImpl implements ShopActivities{

	@Autowired
	@Qualifier("shopActivities")
	private ShopActivities shopActivities;
	
	@Override
	public ShopActivities findShopActivitiesById(String id) {
		// TODO Auto-generated method stub
		return shopActivities.findShopActivitiesById(id);
	}

	
}
