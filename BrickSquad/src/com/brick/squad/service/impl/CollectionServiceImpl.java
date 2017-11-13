package com.brick.squad.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.expand.ArticleExpand;
import com.brick.squad.expand.CollectionExpand;
import com.brick.squad.mapper.CollectionMapper;
import com.brick.squad.pojo.Collection;
import com.brick.squad.service.CollectionService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.PaginationCollection;
import com.brick.squad.util.Util;

@Transactional
public class CollectionServiceImpl implements CollectionService {

	@Autowired
	@Qualifier("collectionMapper")
	private CollectionMapper collectionMapper;

	@Override
	public Collection findCollectionById(String id) {
		return collectionMapper.findCollectionById(id);
	}

	@Override
	public void insertCollection(Collection collection) {
		collectionMapper.insertCollection(collection);

	}

	@Override
	public void updateCollectionById(Collection collection) {
		collectionMapper.updateCollectionById(collection);

	}

	@Override
	public void deleteCollectionById(String collectionId) {
		collectionMapper.deleteCollectionById(collectionId);

	}

	@Override
	public String collectionPagination(Pagination pagination) {
		List<CollectionExpand> datas = collectionMapper
				.collectionPagination(pagination);
		int n = collectionMapper.collectionCount(pagination);
		Util<CollectionExpand> util = new Util<CollectionExpand>();
		String data = util.SplitPage(datas, n);
		return data;
	}

	public Map<String, Object> findCollectionMessage(PaginationCollection pagination){
		List<ArticleExpand> articleExpands=collectionMapper.findCollectionMessage(pagination);
		pagination.setCount(collectionMapper.findCollectionMessageCount(pagination));
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("ArticleExpand", articleExpands);
		map.put("pagination", pagination);
		return map;
		
	}

	@Override
	/**
	 * 根据收藏的商品ID查询信息
	 * */
	public List<Collection> findCollectionByArticleId(String articleId) throws Exception {
		List<Collection> listCollection=collectionMapper.findCollectionByArticleId(articleId);
		return listCollection;
	}
	

}
