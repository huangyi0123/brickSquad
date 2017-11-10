package com.brick.squad.service;

import java.util.List;

import com.brick.squad.expand.RelativesAndAddressAndTypeAndPersonExpand;
import com.brick.squad.pojo.Relatives;
import com.brick.squad.util.Pagination;

public interface RelativesService {
	/**
	 * 根据perId查询亲属
	 * 
	 * @param PerId
	 * @return
	 */
	public List<Relatives> selectRelativesByPerId(String PerId);

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
	public void insertRelatives(
			RelativesAndAddressAndTypeAndPersonExpand relativesAndAddressAndTypeAndPersonExpand);

	/**
	 * 根据拓展类中的id修改老人亲属信息
	 * 
	 */
	public void updateRelativesByIdExend(
			RelativesAndAddressAndTypeAndPersonExpand relativesAndAddressAndTypeAndPersonExpand);

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

	/**
	 * 普通用户删除亲属联系人，要把与之关联的地址也删掉
	 * 
	 * @param id
	 */
	public void userDeleteRelativesById(String id);

	public String relativesPagination(Pagination pagination);

	/**
	 * 普通用户查看自己的亲属联系人
	 * 
	 * @param pagination
	 * @return
	 */
	public String usergetrelativesPagination(String id) throws Exception;

}
