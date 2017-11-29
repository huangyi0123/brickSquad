package com.brick.squad.mapper;

import java.util.List;
import java.util.Map;

import com.brick.squad.expand.OrderExpand;
import com.brick.squad.expand.PersonalInfofmationAndHealthRecordsExpand;
import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.pojo.Type;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;

/**
 * 老人信息mapper
 * 
 * @author 梁城月
 * 
 */
public interface PersonalInformationMapper {
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
			PersonalInformation personalInformation);

	/**
	 * 根据id删除老人信息
	 * 
	 * @param personalInformation
	 *            老人信息
	 */
	public void updatePersonalInformationById(
			PersonalInformation personalInformation);

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
	 * @return 老人信息
	 */
	public List<PersonalInformation> personalInformationPagination(
			Pagination pagination);

	/**
	 * 查询记录数
	 * 
	 * @return 记录数
	 */
	public int personalInformationCount(Pagination pagination);

	/**
	 * 查询老人所有信息,所有字段
	 * */
	public List<PersonalInformation> findAllPersonalInformations();

	/**
	 * 查询老人所有信息，需求字段
	 * */
	public List<Select> findAllPersonalInformation();

	/**
	 * 查询老人姓名 身份证用于guidance的回显
	 */
	public List<PersonalInformation> findPerIdAndIdCard();

	/**
	 * 级联查询后得到数据回显到老人个人信息详情列表
	 */
	public PersonalInformation findThereAllById(String id);

	/**
	 * 根据区域对老人年龄进行统计
	 * 
	 * @param type
	 *            区域
	 * @return 老人年龄信息
	 */
	public Map<String, Object> findPerByAge(Type type);

	/**
	 * 统计老人消费情况
	 * 
	 * @param type
	 *            区域
	 * @return 老人消费情况
	 */
	public Map<String, Object> consumptionSituation(Type type);

}
