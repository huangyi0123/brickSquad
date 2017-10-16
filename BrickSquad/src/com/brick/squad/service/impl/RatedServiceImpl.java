package com.brick.squad.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.RatedMapper;
import com.brick.squad.pojo.Rated;
import com.brick.squad.service.RatedService;
@Transactional
public class RatedServiceImpl implements RatedService {
@Autowired
@Qualifier("ratedMapper")
private RatedMapper ratedMapper;
	@Override
	public Rated findRatedById(String id) {		
		return ratedMapper.findRatedById(id);
	}
	@Override
	public void insertRated(Rated rated) {
		System.err.println(rated.getCentent()+"**");
		ratedMapper.insertRated(rated);
		
	}
	@Override
	public void deleteRatedById(String id) {
		ratedMapper.deleteRatedById(id);
		
	}
	@Override
	public void updateRatedCententById(Rated rated) {
		ratedMapper.updateRatedCententById(rated);
		
	}

}