package com.brick.squad.service;

import com.brick.squad.expand.AddressAndPersonaInformationExpand;
import com.brick.squad.expand.PersonalInfofmationAndHealthRecordsExpand;
import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.util.Pagination;

public interface PersonalInformationService {
	/**
	 * 根据ParentId查询全部的type表的数据
	 * 
	 * @return 在实现类中将集合转换为json字符串
	 */
	public String findTypesByParentId();

	/**
	 * 根据ID查询地址信息
	 * 
	 * @param id
	 * @return 地址对象
	 * @throws Exception
	 */
	public Address findAddressById(String id) throws Exception;

	/**
	 * 根据region表中的字段Level查询
	 * 
	 * @return region集合（大部分情况用于查询省份集合《Level=1》）
	 */
	public String findRegionsByLevel();

	/**
	 * 根据老人id查询信息
	 * 
	 * @param id
	 *            老人id
	 * @return 老人信息
	 */
	public PersonalInformation findPersonalInformationById(String id);

	/**
	 * 插入老人信息
	 * 
	 * @param personalInformation
	 *            老人信息
	 */
	public void insertPersonalInformation(
			AddressAndPersonaInformationExpand addressAndPersonaInformationExpand);

	/**
	 * 根据id删除老人信息
	 * 
	 * @param personalInformation
	 *            老人信息
	 */
	public void updatePersonalInformationById(
			AddressAndPersonaInformationExpand addressAndPersonaInformationExpand)
			throws Exception;

	/**
	 * 根据id删除老人信息
	 * 
	 * @param id
	 *            老人id
	 */
	public void deletePersonalInformationById(String id);

	/**
	 * 根据分页条件查询老人信息
	 * 
	 * @param pagination
	 *            分页信息
	 * @return Json数据
	 */
	public String personalInformationPagination(Pagination pagination);

	/**
	 * 查询老人所有信息,所有字段
	 * */
	public String findAllPersonalInformations();

	/**
	 * 查询老人所有信息，需求字段
	 * */
	public String findAllPersonalInformation();

	/**
	 * 级联查询后得到数据回显到老人个人信息详情列表
	 */
	public PersonalInformation findThereAllById(String id);

}
