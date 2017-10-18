package com.brick.squad.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.ActivitiesMapper;
import com.brick.squad.pojo.Activities;
import com.brick.squad.pojo.Article;
import com.brick.squad.service.ActivitiesService;
import com.brick.squad.util.Pagination;
@Transactional
public class ActivitiesServiceImpl implements ActivitiesService{
	@Autowired
	@Qualifier("activitiesMapper")
	private ActivitiesMapper activitiesMapper;
	@Override
	public Activities findActivitiesById(String id) {
		return activitiesMapper.findActivitiesById(id);
	}
	@Override
	public void insertActivitiesById(Activities activities) {
		// TODO Auto-generated method stub
		activitiesMapper.insertActivities(activities);

	}
	@Override
	public void deleteActivitiesById(String id) {
		// TODO Auto-generated method stub
		activitiesMapper.deleteActivitiesById(id);
	}
	@Override
	public void updateActivitiesById(Activities activities) {
		// TODO Auto-generated method stub
		activitiesMapper.updateActivitiesById(activities);
	}
	@Override
	public List<Activities> ArticlePagination(Pagination pagination) {
		// TODO Auto-generated method stub
		return activitiesMapper.ActivitiesPagination(pagination);
	}
	@Override
	public int findActivitiesAllCount() {
		// TODO Auto-generated method stub
		return activitiesMapper.findActivitiesAllCount();
	}
	
	

}
