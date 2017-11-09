package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.expand.SecKill;
import com.brick.squad.expand.ShopActivitiesExpand;
import com.brick.squad.pojo.Article;
import com.brick.squad.pojo.ShopActivities;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;

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
	
	public List<ShopActivitiesExpand> shopActivitiesPagination(Pagination pagination);

	public int findShopActivitiesAllCount(Pagination pagination);
	
	public List<ShopActivities> findAllShopActivities();
	
	
	public ShopActivitiesExpand findShopActivitiesAndTypeAndArticle(String id);

	public List<Select> findArticle(String businessId);
	/**
	 * 首页秒杀
	 * @return 商品列表
	 */
	public List<SecKill> secKillIndex();
}
