package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.pojo.Relatives;
import com.brick.squad.util.Pagination;

public interface RelativesMapper {
	/**
	 * 根据perId查询亲属
	 * @param PerId
	 * @return
	 */
	public Relatives selectRelativesByPerId(String perId);
	/**
	 * 根据id查询亲属关系
	 * 
	 * @param id
	 *            关系id
	 * @return 亲属关系信息
	 */
	public Relatives findRelativesById(String id);

	/**
	 * 插入老人亲属关系信息
	 * 
	 * @param relatives
	 *            老人亲属关系信息
	 */
	public void insertRelatives(Relatives relatives);

	/**
	 * 根据id修改老人亲属关系信息
	 * 
	 * @param relatives
	 *            老人亲属关系信息
	 */
	public void updateRelativesById(Relatives relatives);

	/**
	 * 根据id删除老人亲属关系信息
	 * 
	 * @param id
	 *            老人亲属关系id
	 */
	public void deleteRelativesById(String id);

	public List<Relatives> relativesPagination(Pagination pagination);

	public int findRelativesAllCount(Pagination pagination);
}
