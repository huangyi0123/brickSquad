package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.pojo.ShopActivities;
import com.brick.squad.util.Pagination;

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
	
	public List<ShopActivities> shopActivitiesPagination(Pagination pagination);

	public int findShopActivitiesAllCount();
}
