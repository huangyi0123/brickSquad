package com.brick.squad.service;

import java.util.List;

import com.brick.squad.expand.TypeExpand;
import com.brick.squad.pojo.Type;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;

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
	
	/**
	 * 根据分页条件查询物品类别信息
	 * @param pagination 分页信息
	 * @return 物品所属类别信息
	 */
	public String typePagination(Pagination pagination);
	
	/**
	 * 查询所有的类型
	 * @return 类型名称
	 */
	public String findAllType();
	
	public String findTypeByParentId(String parentId);
	public List<Select> findType();
	/***
	 * 医疗器械一级分类查询
	 */
	public List<TypeExpand> findIdAndTypeNmae(String parentId)throws Exception;
	/**
	 * 查询商品类型
	 * @return 商品类型列表
	 */
	public List<Type> getArctre(String id) ;
	/**
	 * 根据商品类型id查询子类别
	 * @param id id
	 * @return json 字符串
	 */
	public String getArticleType(String id);
}
