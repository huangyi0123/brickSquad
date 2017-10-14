package com.brick.squad.mapper;

import com.brick.squad.pojo.Type;

/**
 * 类型表
 * @author hy
 *
 */
public interface TypeMapper {

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
