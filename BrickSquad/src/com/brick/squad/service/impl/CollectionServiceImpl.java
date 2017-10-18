package com.brick.squad.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.CollectionMapper;
import com.brick.squad.pojo.ActivityRegistration;
import com.brick.squad.pojo.Collection;
import com.brick.squad.service.CollectionService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Util;

@Transactional
public class CollectionServiceImpl implements CollectionService{

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
		List<Collection> datas=collectionMapper.collectionPagination(pagination);
		int n=collectionMapper.collectionCount();
		Util<Collection> util=new Util<Collection>();
		String data=util.SplitPage(datas, n);
		return data;
	}

	
}
