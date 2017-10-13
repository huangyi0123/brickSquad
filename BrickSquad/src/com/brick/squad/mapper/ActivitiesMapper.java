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
/*	public List<Activities> findActivitiesByName(String name);
	public List<Activiti es> findActivitiesByCentent(String centent);*/
	
}
