package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.pojo.Activities;
import com.brick.squad.pojo.Region;

public interface ActivitiesMapper {
	/**
	 * 
	 * @param id
	 * @return 返回活动列表 
	 */
	public List<Activities> findActivitiesById(String id);


	public void insertActivitiesById(String id);
	
	public void deleteActivitiesById(String id);
	
	public void updateActivitiesById(String id);
}
