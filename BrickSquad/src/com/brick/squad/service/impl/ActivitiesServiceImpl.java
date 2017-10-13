package com.brick.squad.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.ActivitiesMapper;
import com.brick.squad.pojo.Activities;
import com.brick.squad.service.ActivitiesService;
@Transactional
public class ActivitiesServiceImpl implements ActivitiesService{
	@Autowired
	@Qualifier("activitiesMapper")
	private ActivitiesMapper activitiesMapper;
	@Override
	public List<Activities> findActivitiesById(String id) {
		// TODO Auto-generated method stub
		return activitiesMapper.findActivitiesById(id);
	}
	

}
