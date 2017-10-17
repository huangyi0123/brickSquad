package com.brick.squad.mapper;

import com.brick.squad.pojo.ShopActivities;

public interface ShopActivitiesMapper {
	/**
	 * 
	 * @param id
	 * 根据id查询shopActivies商品活动表
	 */
	public ShopActivities findShopActivitiesById(String id);
	
	public void insertShopActivitiesById(ShopActivities shopActivities);
	
	public void deleteShopActivities(String id);
	
	public void updateShopActivitiesById(ShopActivities shopActivities);
	


}
