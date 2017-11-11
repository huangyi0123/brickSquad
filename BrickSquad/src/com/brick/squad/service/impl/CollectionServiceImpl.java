package com.brick.squad.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.expand.ArticleExpand;
import com.brick.squad.expand.CollectionExpand;
import com.brick.squad.mapper.CollectionMapper;
import com.brick.squad.pojo.ActivityRegistration;
import com.brick.squad.pojo.Collection;
import com.brick.squad.service.CollectionService;
import com.brick.squad.util.Pagination;
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
	public void deleteCollectionById(String id) {
		collectionMapper.deleteCollectionById(id);

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

	public List<ArticleExpand> findCollectionMessage(String pid){
		return collectionMapper.findCollectionMessage(pid);
		
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
