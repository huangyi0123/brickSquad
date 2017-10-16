package com.brick.squad.service;

import com.brick.squad.pojo.Type;

public interface TypeService {

	/**
	 * 通过类型表的id查找类型
	 * @param id
	 * @return 类型信息
	 */
	public Type findTypeById(String id);
	
	/**
	 * 新增类型信息
	 * @param type
	 */
	public void insertType(Type type);
	
	/**
	 * 更新类型信息
	 * @param type
	 */
	public void updateTypeById(Type type);
	
	/**
	 * 删除类型信息
	 * @param id
	 */
	public void deleteTypeById(String id);
}