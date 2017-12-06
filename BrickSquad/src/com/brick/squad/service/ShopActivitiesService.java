package com.brick.squad.service;

import java.util.List;
import java.util.Map;

import com.brick.squad.expand.SecKill;
import com.brick.squad.expand.ShopActivitiesExpand;
import com.brick.squad.mapper.ShopActivitiesMapper;
import com.brick.squad.pojo.Article;
import com.brick.squad.pojo.ShopActivities;
import com.brick.squad.util.Pagination;

public interface ShopActivitiesService {
	/**
	 * 
	 * 根据id查询
	 */
	public ShopActivities findShopActivitiesById(String id) throws Exception;

	/**
	 * 通过id增加信息
	 * 
	 * @param id
	 */
	public void insertShopActivitiesById(ShopActivities shopActivities)
			throws Exception;

	/**
	 * 根据id删除信息
	 * 
	 * @param id
	 */

	public void delectShopActivitiesById(String id) throws Exception;

	public void updateShopActivitiesById(ShopActivities shopActivities)
			throws Exception;

	public String shopActivitiesPagination(Pagination pagination);

	// public int findShopActivitiesAllCount();

	public String findAllShopActivities();

	public String findTypeAndArticle();

	public ShopActivitiesExpand findShopActivitiesAndTypeAndArticle(String id);

	public String findArticle(String businessId);

	/**
	 * 首页秒杀
	 * 
	 * @return 商品列表
	 */
	public List<SecKill> secKillIndex();
	public String shopActiveType(Map<String, Object> map);

}
