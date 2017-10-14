package com.brick.squad.service.impl;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.LimitsMapper;
import com.brick.squad.pojo.Limits;
import com.brick.squad.service.LimitsService;

@Transactional
public class LimitsServiceImpl implements LimitsService {
	@Autowired
	@Qualifier("limitsMapper")
	private LimitsMapper limitsMapper;
	@Override
	public Limits findLimitsById(String id) {
		return limitsMapper.findLimitsById(id);
	}

	@Override
	public void insertLimits(Limits limits) {
		limitsMapper.insertLimits(limits);
		
	}

	@Override
	public void updateLimitsById(Limits limits) {
		limitsMapper.updateLimitsById(limits);
		
	}

	@Override
	public void deleteLimitsById(String id) {
		limitsMapper.deleteLimitsById(id);
		
	}
	
}
