package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.expand.TypeExpand;
import com.brick.squad.pojo.ActivityRegistration;
import com.brick.squad.pojo.Type;
import com.brick.squad.util.PageBeanUtil;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;

/**
 * 类型表
 * 
 * @author hy
 * 
 */
public interface TypeMapper {

	/**
	 * 通过类型表的id查找类型
	 * 
	 * @param id
	 * @return 类型信息
	 */
	public Type findTypeById(String id);

	/**
	 * 新增类型信息
	 * 
	 * @param type
	 */
	public void insertType(Type type);

	/**
	 * 更新类型信息
	 * 
	 * @param type
	 */
	public void updateTypeById(Type type);

	/**
	 * 删除类型信息
	 * 
	 * @param id
	 */
	public void deleteTypeById(String id);

	/**
	 * 根据分页条件查询物品类别信息
	 * 
	 * @param pagination
	 *            分页信息
	 * @return 物品所属类别信息
	 */
	public List<Type> typePagination(Pagination pagination);

	/**
	 * 查询记录数
	 * 
	 * @return 记录数
	 */
	public int typeCount(Pagination pagination);

	/**
	 * 查询所有的类型
	 * 
	 * @return 类型名称
	 */
	public List<Type> findAllType();

	/**
	 * 查询所有民族
	 * 
	 * @return 民族集合
	 */
	public List<Select> findTypeByParentId(String parentId);

	/**
	 * 查询商品类别下的所有类别
	 * 
	 * @return 商品类别下的所有类别
	 */
	public List<Select> findTypeByArticl();

	public List<Select> findType();

	/**
	 * 
	 * @param parentId
	 *            所属类别id
	 * @return 类别列表
	 */
	public List<Type> findTyepByParentId(String parentId);

	/***
	 * 医疗器械一级分类查询
	 */
	public List<TypeExpand> findIdAndTypeNmae(String parentId);
	/**
	 * 查询所有的商品类别，用于搜索框
	 * */
	public List<Type> findAllTypeByParentId(String parentId);
	/**
	 * 官网首页搜索
	 * */
	public List<Type> searchName(PageBeanUtil pageBean);
	/**
	 * 查询总数根据关键字
	 * */
	public int findCountSearch(PageBeanUtil pageBean);
	/**
	 * 查询分店区域
	 * */
	public List<Type> findBranchId();

}
