package com.brick.squad.service;

import java.util.List;

import com.brick.squad.pojo.Activities;

public interface ActivitiesService {
	/**
	 * 
	 * @param id
	 * @return 返回活动列表 
	 */
	public List<Activities> findActivitiesById(String id) throws Exception;

	public void insertActivitiesById(String id) throws Exception;
	
	public void deleteActivitiesById(String id)throws Exception;
	
	public void updateActivitiesById(String id)throws Exception;
}
