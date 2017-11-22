package com.brick.squad.service;

import java.lang.reflect.InvocationTargetException;
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
	public Activities findActivitiesById(String id) throws Exception;

	public void insertActivitiesById(Activities activities) throws Exception;

	public void deleteActivitiesById(String id) throws Exception;

	public void updateActivitiesById(Activities activities) throws Exception;

	public int findActivitiesAllCount();

	public String activitiesPagination(Pagination pagination) throws NoSuchMethodException, IllegalAccessException, IllegalArgumentException, InvocationTargetException, Exception;

	public String findAllActivities() throws Exception;

	public String findAllTypeAndUser() throws Exception;

	public ActivitiesExpand findActivitiesAndTpyeAndUser(String id) throws Exception;

	/*
	 * 查询出所有活动的需求字段
	 */
	public String findAllActivitiesIdAndName() throws Exception;
	/**
	 * 查询活动名称 ,用于首页的报名回显*/
	public String findActivityName()throws Exception;

}
