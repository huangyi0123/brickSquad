package com.brick.squad.service;

import java.util.List;

import com.brick.squad.expand.MedicalExpand;
import com.brick.squad.pojo.Medical;
import com.brick.squad.util.PageBeanUtil;
import com.brick.squad.util.Pagination;

public interface MedicalService {
	/**
	 * 查询全部的PersonalInformation返回id IDcard name
	 * 
	 * @return json字符串
	 */
	public String findAllPersonalInformationGetIdAndIdCardAndName();

	public void insertMedical(Medical medical);

	public void deleteMedicalById(String id);

	public void updateMedicalById(Medical medical);

	public Medical findMedicalById(String id);

	/**
	 * 通过分页条件返回json数据
	 * 
	 * @param pagination
	 *            分页条件
	 * @return json数据
	 */
	public String medicalPagination(Pagination pagination);

	// public int findMedicalAllCount();

	public String findAllPersonalInformationAndType();

	public MedicalExpand findPersonalInformationAndType(String id);
	/**查看用户检查病历史*/
	public PageBeanUtil<MedicalExpand> findMedicalByUser(int page,String pId)throws Exception;
	/**查看用户检查病历史记录数*/
	public int findCountMedicalByUser(PageBeanUtil pageBeanUtil)throws Exception;

}
