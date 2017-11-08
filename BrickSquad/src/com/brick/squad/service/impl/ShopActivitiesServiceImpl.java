package com.brick.squad.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.expand.ArticleExpand;
import com.brick.squad.expand.ShopActivitiesExpand;
import com.brick.squad.mapper.ArticleMapper;
import com.brick.squad.mapper.BusinessMapper;
import com.brick.squad.mapper.ShopActivitiesMapper;
import com.brick.squad.mapper.TypeMapper;
import com.brick.squad.pojo.Article;
import com.brick.squad.pojo.Reply;
import com.brick.squad.pojo.ShopActivities;
import com.brick.squad.pojo.Type;
import com.brick.squad.service.ShopActivitiesService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;
import com.brick.squad.util.Util;
@Transactional
public class ShopActivitiesServiceImpl implements ShopActivitiesService{

	@Autowired
	@Qualifier("shopActivitiesMapper")
	private ShopActivitiesMapper shopActivitiesMapper; 
	
	@Autowired
	@Qualifier("typeMapper")
	private TypeMapper typeMapper;
	
	@Autowired
	@Qualifier("articleMapper")
	private ArticleMapper articleMapper;
	
	@Autowired
	@Qualifier("businessMapper")
	private BusinessMapper businessMapper;
	
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
		List<ShopActivitiesExpand> shopActivities = shopActivitiesMapper.shopActivitiesPagination(pagination);
		int row = shopActivitiesMapper.findShopActivitiesAllCount(pagination);
		Util<ShopActivitiesExpand> util = new Util<ShopActivitiesExpand>();
		String data = util.SplitPage(shopActivities, row);
		return data;
	}

/*	@Override
	public int findShopActivitiesAllCount() {
		// TODO Auto-generated method stub
		return shopActivitiesMapper.findShopActivitiesAllCount();
	}*/

	@Override
	public String findAllShopActivities() {
		List<Select> selects=typeMapper.findTypeByParentId("9356093ab7eb11e78d4f5254002ec43c");
		JSONArray jsonArray=new JSONArray();
		String data = jsonArray.fromObject(selects).toString();
		return data ;
	}

	
	
	@Override
	public String findTypeAndArticle() {
		// TODO Auto-generated method stub
		List<Select> article=articleMapper.findArticle(); 
		List<Select> type =typeMapper.findTypeByParentId("shangpinhuodongleixing");
		List<Select> business = businessMapper.findAllBusiness();
		Map<String, List> map=new HashMap<String, List>();
		map.put("article", article);
		map.put("type", type);
		map.put("business", business);
		JSONArray jsonArray=new JSONArray();
		String data=jsonArray.fromObject(map).toString();
		return data;
	}

	@Override
	public ShopActivitiesExpand findShopActivitiesAndTypeAndArticle(String id) {
		ShopActivitiesExpand shopActivitiesExpand = shopActivitiesMapper.findShopActivitiesAndTypeAndArticle(id);
		return shopActivitiesExpand;
	}

	
	@Override
	public String findArticle(String businessId) {
		List<Select> aname =shopActivitiesMapper.findArticle(businessId);
		JSONArray jsonArray = new JSONArray();
		String dataAnames =jsonArray.fromObject(aname).toString();
		return dataAnames;
	}
}
