package com.brick.squad.service;

import java.util.List;

import com.brick.squad.expand.ActivitiesExpand;
import com.brick.squad.pojo.Activities;
import com.brick.squad.util.Pagination;

public interface ActivitiesService {
	/**
	 * 
	 * @param id
	 * @return 返回活动列表 
	 */
	public Activities  findActivitiesById(String id) throws Exception;

	public void insertActivitiesById(Activities activities) throws Exception;
	
	public void deleteActivitiesById(String id)throws Exception;
	
	public void updateActivitiesById(Activities activities)throws Exception;

	public int findActivitiesAllCount();

	public String activitiesPagination(Pagination pagination);

	public String findAllActivities();

	
	public String findAllTypeAndUser();
	
	public ActivitiesExpand findActivitiesAndTpyeAndUser(String id);
	/*
	 * 查询出所有活动的需求字段
	 */
	public String findAllActivitiesIdAndName();
	


}
