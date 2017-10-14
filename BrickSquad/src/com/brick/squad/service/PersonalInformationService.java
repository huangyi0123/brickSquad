package com.brick.squad.service;

import com.brick.squad.pojo.PersonalInformation;

public interface PersonalInformationService {
	/**
	 * 根据老人id查询信息
	 * @param id 老人id
	 * @return 老人信息
	 */
	public PersonalInformation findPersonalInformationById(String id);
	/**
	 * 插入老人信息
	 * @param personalInformation 老人信息
	 */
	public void insertPersonalInformation(PersonalInformation personalInformation);
	/**
	 * 根据id删除老人信息
	 * @param personalInformation 老人信息
	 */
	public void updatePersonalInformationById(PersonalInformation personalInformation);
	/**
	 * 根据id删除老人信息
	 * @param id 老人id
	 */
	public void deletePersonalInformationById(String id);
}
