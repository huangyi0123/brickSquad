package com.brick.squad.service;

import com.brick.squad.expand.RelativesAndAddressAndTypeAndPersonExpand;
import com.brick.squad.expand.RelativesAndAddressExpand;
import com.brick.squad.pojo.Relatives;
import com.brick.squad.util.Pagination;

public interface RelativesService {
	/**
	 * 根据perId查询亲属
	 * @param PerId
	 * @return
	 */
	public Relatives selectRelativesByPerId(String PerId);
	/**
	 * 用户完善亲属联系信息
	 * @param relativesAndAddressExpand
	 */
	public void userUpdateRelatives(RelativesAndAddressExpand relativesAndAddressExpand)throws Exception;
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
	public void insertRelatives(RelativesAndAddressAndTypeAndPersonExpand relativesAndAddressAndTypeAndPersonExpand);
	/**
	 * 根据拓展类中的id修改老人亲属信息
	 * 
	 */
	public void updateRelativesByIdExend(RelativesAndAddressAndTypeAndPersonExpand relativesAndAddressAndTypeAndPersonExpand);
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

	public String relativesPagination(Pagination pagination);

}
