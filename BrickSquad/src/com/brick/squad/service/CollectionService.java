package com.brick.squad.service;

import com.brick.squad.pojo.Collection;

public interface CollectionService {

	/**
	 * 根据收藏信息id查询收藏品
	 * @param id
	 * @return 收藏品信息
	 */
	public Collection findCollectionById(String id);
	
	/**
	 * 新增收藏品
	 * @param collection
	 */
	public void insertCollection(Collection collection);
	
	/**
	 * 更新收藏品信息
	 * @param collection
	 */
	public void updateCollectionById(Collection collection);
	
	/**
	 * 删除收藏品信息
	 * @param id
	 */
	public void deleteCollectionById(String id);
}
