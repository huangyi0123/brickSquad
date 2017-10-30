package com.brick.squad.service.impl;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.expand.LimitsExpand;
import com.brick.squad.mapper.LimitsMapper;
import com.brick.squad.pojo.Limits;
import com.brick.squad.service.LimitsService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Util;

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

	@Override
	public String limitsPagination(Pagination pagination) {
		List<LimitsExpand> datas=limitsMapper.limitsPagination(pagination);
		int n=limitsMapper.limitsCount();
		Util<LimitsExpand> util=new Util<LimitsExpand>();
		String data=util.SplitPage(datas, n);
		return data;
	}

	@Override
	public String findAllTableName(String roleId) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
