package com.brick.squad.service;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import com.brick.squad.expand.ActivitiesAndPaginationExtend;
import com.brick.squad.expand.ActivitiesExpand;
import com.brick.squad.pojo.Activities;
import com.brick.squad.pojo.Type;
import com.brick.squad.util.PageBeanUtil;
import com.brick.squad.util.Pagination;

public interface ActivitiesService {
	/**
	 * 根据视频类型id name centent 模糊 查询当前类型点击量最多的前三条
	 * @param activities
	 * @return
	 * @throws Exception 
	 */
	public List<Activities> findActivitiesMovieClickAmountByRegexp(Activities activities) throws Exception;
	/**
	 * 据视频类型id 查询当前类型点击量最多的前三条
	 * 
	 * @param typeId
	 * @return
	 * @throws Exception 
	 */
	public List<Activities> findActivitiesMovieClickAmountByTypeId(Activities activities) throws Exception;
	/**
	 * 修改视频点击量,每次+1
	 * 
	 * @param activities
	 */
	public void updateClickAmountById(String id);

	/**
	 * 根据类型ID查询视频路径，用于官网线上视频
	 * 
	 * @param typeId
	 *            类型id
	 * @return
	 */
	public List<Activities> findActivitiesMovieByTypeId(
			ActivitiesAndPaginationExtend activitiesAndPaginationExtend)
			throws Exception;

	/**
	 * 
	 * @param id
	 * @return 返回活动列表
	 */
	public Activities findActivitiesById(String id) throws Exception;
	public String findOfficalActivitiesById(String id) throws Exception;

	public void insertActivitiesById(Activities activities) throws Exception;

	public void deleteActivitiesById(String id) throws Exception;

	public void updateActivitiesById(Activities activities) throws Exception;

	public int findActivitiesAllCount();

	public String activitiesPagination(Pagination pagination)
			throws NoSuchMethodException, IllegalAccessException,
			IllegalArgumentException, InvocationTargetException, Exception;

	public String findAllActivities() throws Exception;

	public String findAllTypeAndUser() throws Exception;

	public ActivitiesExpand findActivitiesAndTpyeAndUser(String id)
			throws Exception;

	/*
	 * 查询出所有活动的需求字段
	 */
	public String findAllActivitiesIdAndName() throws Exception;

	/**
	 * 查询活动名称 ,用于首页的报名回显
	 */
	public String findActivityName() throws Exception;

	/**
	 * 根据关键字模糊查询活动名称
	 * */
	public PageBeanUtil<Activities> findActivitesName(int page, String search)
			throws Exception;

	/**
	 * 根据关键字模糊查询活动名称总数
	 * */
	public int findCountActivitesName(PageBeanUtil pageBeanUtil)
			throws Exception;

	/***
	 * 官网，乐堡服务中的体检预约 信息显示
	 * */
	public PageBeanUtil<Activities> findServerWebsiteTemplate(int page,
			String typeId) throws Exception;

	/** 统计总记录数 */
	public int findCountServerWebsiteTemplate(PageBeanUtil pageBeanUtil)
			throws Exception;

}
