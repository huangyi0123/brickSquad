package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.expand.ActivitiesExpand;
import com.brick.squad.pojo.Activities;
import com.brick.squad.pojo.Region;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;

public interface ActivitiesMapper {
	/**
	 * 
	 * @param id
	 * @return 返回活动列表 
	 */
	public Activities findActivitiesById(String id);


	public void insertActivities(Activities activities);
	
	public void deleteActivitiesById(String id);
	
	public void updateActivitiesById(Activities activities);
	
	public List<Activities> activitiesPagination(Pagination pagination) ;
	
	public int findActivitiesAllCount();
	
	public List<ActivitiesExpand> findAllActivities();
	
	
	/**
	 * 根据活动ID查询关联的tpye表和user的相关详细信息
	 */
	public ActivitiesExpand findActivitiesAndTpyeAndUser(String id);

}
