package com.brick.squad.service.impl;

import java.util.List;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.PersonalInformationMapper;
import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.service.PersonalInformationService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;
import com.brick.squad.util.Util;
@Transactional
public class PersonalInformationServiceImpl implements PersonalInformationService {
	@Autowired
	@Qualifier("personalInformationMapper")
	private PersonalInformationMapper personalInformationMapper;
	@Override
	public PersonalInformation findPersonalInformationById(String id) {
		
		return personalInformationMapper.findPersonalInformationById(id);
	}

	@Override
	public void insertPersonalInformation(PersonalInformation personalInformation) {
		personalInformationMapper.insertPersonalInformation(personalInformation);
		
	}

	@Override
	public void updatePersonalInformationById(PersonalInformation personalInformation) {
		personalInformationMapper.updatePersonalInformationById(personalInformation);
		
	}

	@Override
	public void deletePersonalInformationById(String id) {
		personalInformationMapper.deletePersonalInformationById(id);
		
	}

	@Override
	public String personalInformationPagination(
			Pagination pagination) {
		List<PersonalInformation> datas=personalInformationMapper.personalInformationPagination(pagination);
		int n=personalInformationMapper.personalInformationCount();
		Util<PersonalInformation> util =new Util<PersonalInformation>();
		String data=util.SplitPage(datas, n);
		return data;
	}
	@Override
	/**
	 * 查询老人所有信息，需求字段
	 * */
	public String findAllPersonalInformation() {
		List<Select> personalInformation=personalInformationMapper.findAllPersonalInformation();
		JSONArray jsonArray = new JSONArray();
		String dataTytes =jsonArray.fromObject(personalInformation).toString();
		return dataTytes;
	}
	@Override
	/**
	 * 查询老人所有信息,所有字段
	 * */
	public String findAllPersonalInformations() {
		List<PersonalInformation> personalInformation=personalInformationMapper.findAllPersonalInformations();
		JSONArray jsonArray = new JSONArray();
		String dataTytes =jsonArray.fromObject(personalInformation).toString();
		return dataTytes;
	}

}
