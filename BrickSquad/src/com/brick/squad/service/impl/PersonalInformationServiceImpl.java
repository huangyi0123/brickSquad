package com.brick.squad.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.PersonalInformationMapper;
import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.service.PersonalInformationService;
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
	public void insert(PersonalInformation personalInformation) {
		personalInformationMapper.insert(personalInformation);
		
	}

	@Override
	public void update(PersonalInformation personalInformation) {
		personalInformationMapper.update(personalInformation);
		
	}

	@Override
	public void delete(String id) {
		personalInformationMapper.delete(id);
		
	}

}
