package com.brick.squad.mapper;

/**
 * 活动登记表mapper
 */
import java.util.List;

import com.brick.squad.pojo.ActivityRegistration;

public interface ActivityRegistrationMapper {
	
    /**
     * 根据活动登记信息表id查询信息
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
}
