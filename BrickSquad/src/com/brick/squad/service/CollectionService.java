package com.brick.squad.service;

import java.util.List;

import com.brick.squad.pojo.Collection;
import com.brick.squad.util.Pagination;

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
	
	/**
	 * 根据分页条件查询收藏物品信息
	 * @param pagination 分页信息
	 * @return 收藏物品信息
	 */
	public String collectionPagination(Pagination pagination);
	
}
