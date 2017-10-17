package com.brick.squad.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.mapper.GuidanceMapper;
import com.brick.squad.pojo.Guidance;
import com.brick.squad.service.GuidanceService;
import com.brick.squad.util.Pagination;

public class GuidanceServiceImpl implements GuidanceService {
	@Autowired
	@Qualifier("guidanceMapper")
	private GuidanceMapper guidanceMapper;
	@Override
	public void insertGuidanceById(Guidance guidance) throws Exception {
		// TODO Auto-generated method stub
		guidanceMapper.insertGuidanceById(guidance);
	}
	@Override
	public Guidance queryGuidanceById(String  id) throws Exception {
		// TODO Auto-generated method stub
		return guidanceMapper.queryGuidanceById(id);
	}
	@Override
	public void deleteGuidanceById(String id) throws Exception {
		// TODO Auto-generated method stub
		guidanceMapper.deleteGuidanceById(id);
	}
	@Override
	public void updateGuidanceById(Guidance guidance) throws Exception {
		// TODO Auto-generated method stub
		guidanceMapper.updateGuidanceById(guidance);
	}
	@Override
	public List<Guidance> guidancePagination(Pagination pagination)
			throws Exception {
		// TODO Auto-generated method stub
		return guidanceMapper.guidancePagination(pagination);
	}

}
