package com.brick.squad.mapper;

/**
 * 活动登记表mapper
 */
import java.util.List;

import com.brick.squad.expand.ActivityRegistrationExpand;
import com.brick.squad.pojo.ActivityRegistration;
import com.brick.squad.pojo.Type;
import com.brick.squad.util.Pagination;

public interface ActivityRegistrationMapper {

	/**
	 * 根据活动登记信息表id查询信息
	 * 
	 * @param id
	 * @return 活动登记表信息
	 */
	public ActivityRegistration findActivityRegistrationById(String id);

	/**
	 * 插入活动信息
	 * 
	 * @param activityRegistration
	 */
	public void insertActivityRegistration(
			ActivityRegistration activityRegistration);

	/**
	 * 更新活动信息
	 * 
	 * @param activityRegistration
	 */
	public void updateActivityRegistrationById(
			ActivityRegistration activityRegistration);

	/**
	 * 删除活动信息
	 * 
	 * @param id
	 */
	public void deleteActivityRegistrationById(String id);

	/**
	 * 根据分页条件查询活动信息
	 * 
	 * @param pagination
	 *            分页信息
	 * @return 活动信息
	 */
	public List<ActivityRegistrationExpand> activityRegistrationPagination(
			Pagination pagination);

	/**
	 * 查询记录数
	 * 
	 * @return 记录数
	 */
	public int activityRegistrationCount(Pagination pagination);

	public ActivityRegistrationExpand findActivityRegistrationAndPersonalInformationAndActivities(
			String id);

	/**
	 * 根据老人id查询perid删除信息
	 * 
	 * @param perId
	 */
	public void deleteByPerIdActivityRegistration(String perId);
}
