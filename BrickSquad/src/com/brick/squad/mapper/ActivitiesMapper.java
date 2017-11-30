package com.brick.squad.mapper;

import java.util.List;
import java.util.Map;

import com.brick.squad.expand.ActiveExpand;
import com.brick.squad.expand.ActivitiesAndPaginationExtend;
import com.brick.squad.expand.ActivitiesExpand;
import com.brick.squad.expand.NewsArticle;
import com.brick.squad.pojo.Activities;
import com.brick.squad.util.PageBeanUtil;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;

public interface ActivitiesMapper {
	/**
	 * 根据类型ID查询视频路径集合数量，用于官网线上视频
	 * 
	 * @param activitiesAndPaginationExtend
	 * @return
	 */
	public int findActivitiesMovieCountTotalByTypeId(
			ActivitiesAndPaginationExtend activitiesAndPaginationExtend);

	/**
	 * 根据视频类型id name centent 模糊 查询当前类型点击量最多的前三条
	 * 
	 * @param activities
	 * @return
	 */
	public List<Activities> findActivitiesMovieClickAmountByRegexp(
			Activities activities);

	/**
	 * 据视频类型id 查询当前类型点击量最多的前三条
	 * 
	 * @param typeId
	 * @return
	 */
	public List<Activities> findActivitiesMovieClickAmountByTypeId(
			Activities activities);

	/**
	 * 修改视频点击量,每次+1
	 * 
	 * @param activities
	 */
	public void updateClickAmountById(String id);

	/**
	 * 
	 * @param id
	 * @return 返回活动列表
	 */
	public Activities findActivitiesById(String id);

	public void insertActivities(Activities activities);

	public void deleteActivitiesById(String id);

	public void updateActivitiesById(Activities activities);

	public List<Activities> activitiesPagination(Pagination pagination);

	public int findActivitiesAllCount();

	public List<ActivitiesExpand> findAllActivities();

	/**
	 * 根据活动ID查询关联的tpye表和user的相关详细信息
	 */
	public ActivitiesExpand findActivitiesAndTpyeAndUser(String id);

	/**
	 * 根据活动id查询出所有活动名称
	 */
	public List<Select> findAllActivitiesIdAndName();

	/**
	 * 获取首页最新商品
	 * 
	 * @return 最新商品集合
	 */
	public List<NewsArticle> findNewsArticleByIndex();

	/**
	 * 查询活动名称 ,用于首页的报名回显
	 */
	public List<Activities> findActivityName();

	/**
	 * 根据关键字模糊查询活动名称
	 * */
	public List<Activities> findActivitesName(PageBeanUtil pageBean);

	/**
	 * 根据关键字模糊查询活动名称总数
	 * */
	public int findCountActivitesName(PageBeanUtil pageBeanUtil);

	/**
	 * 根据类型ID查询视频路径，用于官网线上视频
	 * 
	 * @param typeId
	 *            类型id
	 * @return
	 */
	public List<Activities> findActivitiesMovieByTypeId(
			ActivitiesAndPaginationExtend activitiesAndPaginationExtend);

	/***
	 * 官网，乐堡服务中的体检预约 信息显示
	 * */
	public List<Activities> findServerWebsiteTemplate(PageBeanUtil pageBeanUtil);

	/** 统计总记录数 */
	public int findCountServerWebsiteTemplate(PageBeanUtil pageBeanUtil);
	public Activities findOfficalActivitiesById(String id);
	public List<Map<String, Object>> findEchartActiveTypre(Map<String, Object> map);
	
	public List<ActiveExpand> findActiveList(String userId);
}
