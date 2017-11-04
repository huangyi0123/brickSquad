package com.brick.squad.service;

import java.util.List;

import com.brick.squad.expand.ActivityRegistrationExpand;
import com.brick.squad.pojo.ActivityRegistration;
import com.brick.squad.util.Pagination;

public interface ActivityRegistrationService {

    /**
     * 根据活动登记id查询信息
     * @param id
     * @return 活动登记表信息
     */
	public ActivityRegistration findActivityRegistrationById(String id);
	
	/**
	 * 插入活动信息
	 * @param activityRegistration
	 */
	public void insertActivityRegistration(ActivityRegistration activityRegistration);
	
	/**
	 * 更新活动信息
	 * @param activityRegistration
	 */
	public void updateActivityRegistrationById(ActivityRegistration activityRegistration);
	
	/**
	 * 删除活动信息
	 * @param id
	 */
	public void deleteActivityRegistrationById(String id);
	
	/**
	 * 根据分页条件查询活动信息
	 * @param pagination 分页信息
	 * @return 活动信息
	 */
	public String activityRegistrationPagination(Pagination pagination);
	
	
	/**
	 * 根据id查询ActivityRegistration关联的表的内容
	 * @param id
	 * @return
	 */
	public ActivityRegistrationExpand findActivityRegistrationAndPersonalInformationAndActivities(String id);
	
	
}
