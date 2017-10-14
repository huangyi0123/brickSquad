package com.brick.squad.service.impl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.mapper.BusinessMapper;
import com.brick.squad.pojo.Business;
import com.brick.squad.service.BusinessService;

@Transactional
public class BusinessServiceImpl implements BusinessService{

	@Autowired
	@Qualifier("businessMapper")
	
	private BusinessMapper businessMapper;
	
	@Override
	public Business findBusinessById(String id) {
		return businessMapper.findBusinessById(id);
	}

	@Override
	public void insertBusiness(Business business) {
		businessMapper.insertBusiness(business);
		
	}

	@Override
	public void updateBusinessById(Business business) {
		businessMapper.updateBusinessById(business);
		
	}

	@Override
	public void deleteBusinessById(String id) {
		businessMapper.deleteBusinessById(id);
		
	}

}
