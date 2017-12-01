package com.brick.squad.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;
import net.sf.json.JsonConfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.expand.ActivitiesAndPaginationExtend;
import com.brick.squad.expand.ActivitiesExpand;
import com.brick.squad.mapper.ActivitiesMapper;
import com.brick.squad.mapper.TypeMapper;
import com.brick.squad.mapper.UserMapper;
import com.brick.squad.pojo.Activities;
import com.brick.squad.service.ActivitiesService;
import com.brick.squad.util.Filter;
import com.brick.squad.util.GridManagerList;
import com.brick.squad.util.JsonDateValueProcessor;
import com.brick.squad.util.PageBeanUtil;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;
import com.brick.squad.util.Util;

@Transactional
public class ActivitiesServiceImpl implements ActivitiesService {
	@Autowired
	@Qualifier("activitiesMapper")
	private ActivitiesMapper activitiesMapper;

	@Autowired
	@Qualifier("typeMapper")
	private TypeMapper typeMapper;

	@Autowired
	@Qualifier("userMapper")
	private UserMapper userMapper;

	@Override
	public Activities findActivitiesById(String id) throws Exception {
		Activities activities = activitiesMapper.findActivitiesById(id);
		activities = (Activities) Filter.filterObject(activities);
		return activities;
	}

	@Override
	public void insertActivitiesById(Activities activities) throws Exception {
		// TODO Auto-generated method stub
		activities = (Activities) Filter.filterObject(activities);
		activitiesMapper.insertActivities(activities);
	}

	@Override
	public void deleteActivitiesById(String id) {
		// TODO Auto-generated method stub
		activitiesMapper.deleteActivitiesById(id);
	}

	@Override
	public void updateActivitiesById(Activities activities) throws Exception {
		// TODO Auto-generated method stub
		activities = (Activities) Filter.filterObject(activities);
		activitiesMapper.updateActivitiesById(activities);
	}

	// 分页查询
	@Override
	public String activitiesPagination(Pagination pagination) throws Exception {

		List<Activities> listactivities = activitiesMapper
				.activitiesPagination(pagination);
		for (Activities activities : listactivities) {
			activities = (Activities) Filter.filterObject(activities);
		}
		int row = activitiesMapper.findActivitiesAllCount();

		Util<Activities> util = new Util<Activities>();

		String data = util.SplitPage(listactivities, row);
		return data;
	}

	@Override
	public int findActivitiesAllCount() {
		// TODO Auto-generated method stub
		return activitiesMapper.findActivitiesAllCount();
	}

	@Override
	public String findAllActivities() throws Exception {
		List<ActivitiesExpand> activities = activitiesMapper
				.findAllActivities();
		for (ActivitiesExpand activitiesExpand : activities) {
			activitiesExpand = (ActivitiesExpand) Filter
					.filterObject(activitiesExpand);
		}
		JSONArray jsonArray = new JSONArray();
		String data = jsonArray.fromObject(activities).toString();
		return data;
	}

	@Override
	public String findAllTypeAndUser() throws Exception {
		List<Select> user = userMapper.findAllUser();
		for (Select select : user) {
			select = (Select) Filter.filterObject(select);
		}
		List<Select> type = typeMapper.findTypeByParentId("lrhd");
		for (Select select : type) {
			select = (Select) Filter.filterObject(select);
		}
		Map<String, List> map = new HashMap<String, List>();
		map.put("user", user);
		map.put("type", type);
		JSONArray jsonArray = new JSONArray();
		String data = jsonArray.fromObject(map).toString();
		return data;
	}

	@Override
	public ActivitiesExpand findActivitiesAndTpyeAndUser(String id)
			throws Exception {
		ActivitiesExpand activitiesExpand = activitiesMapper
				.findActivitiesAndTpyeAndUser(id);
		activitiesExpand = (ActivitiesExpand) Filter
				.filterObject(activitiesExpand);
		return activitiesExpand;
	}

	@Override
	public String findAllActivitiesIdAndName() throws Exception {
		// TODO Auto-generated method stub
		List<Select> list = activitiesMapper.findAllActivitiesIdAndName();
		for (Select select : list) {
			select = (Select) Filter.filterObject(select);
		}
		JSONArray jsonArray = new JSONArray();
		String dataString = jsonArray.fromObject(list).toString();
		return dataString;
	}

	@Override
	/**
	 * 查询活动名称 ,用于首页的报名回显*/
	public String findActivityName() throws Exception {
		List<Activities> listArticities = activitiesMapper.findActivityName();
		for (Activities activities : listArticities) {
			activities = (Activities) Filter.filterObject(activities);
		}
		JSONArray jsonArray = new JSONArray();
		String data = jsonArray.fromObject(listArticities).toString();
		return data;
	}

	@Override
	/**
	 * 根据关键字模糊查询活动名称
	 * */
	public PageBeanUtil<Activities> findActivitesName(int page, String search)
			throws Exception {
		PageBeanUtil<Activities> pageBean = new PageBeanUtil<Activities>();
		pageBean.setSearch(search);
		if (page == 0) {
			page = 1;
			// 设置当前页数:
			pageBean.setPage(page);

			// 设置每页显示记录数:
			int limit = 4;
			pageBean.setLimitPage(limit);
			// 设置总记录数:
			int totalCount = 0;
			totalCount = activitiesMapper.findCountActivitesName(pageBean);
			pageBean.setTotalCount(totalCount);
			// 设置总页数:
			int totalPage = 0;
			// Math.ceil(totalCount / limit);
			if (totalCount % limit == 0) {
				totalPage = totalCount / limit;
			} else {
				totalPage = totalCount / limit + 1;
			}
			pageBean.setTotalPage(totalPage);
			// 每页显示的数据集合:
			// 从哪开始:
			int begin = (page - 1) * limit;
			pageBean.setBegin(begin);
			List<Activities> list = activitiesMapper
					.findActivitesName(pageBean);
			pageBean.setList(list);
		} else {
			// 设置当前页数:
			pageBean.setPage(page);
			// 设置每页显示记录数:
			int limit = 4;
			pageBean.setLimitPage(limit);
			// 设置总记录数:
			int totalCount = 0;
			totalCount = activitiesMapper.findCountActivitesName(pageBean);
			pageBean.setTotalCount(totalCount);
			// 设置总页数:
			int totalPage = 0;
			// Math.ceil(totalCount / limit);
			if (totalCount % limit == 0) {
				totalPage = totalCount / limit;
			} else {
				totalPage = totalCount / limit + 1;
			}
			pageBean.setTotalPage(totalPage);
			// 每页显示的数据集合:
			// 从哪开始:
			int begin = (page - 1) * limit;
			pageBean.setBegin(begin);
			List<Activities> list = activitiesMapper
					.findActivitesName(pageBean);
			pageBean.setList(list);
		}
		return pageBean;
	}

	@Override
	/**
	 * 根据关键字模糊查询活动名称总数
	 * */
	public int findCountActivitesName(PageBeanUtil pageBeanUtil)
			throws Exception {
		int count = activitiesMapper.findCountActivitesName(pageBeanUtil);
		return count;
	}

	@Override
	public List<Activities> findActivitiesMovieByTypeId(
			ActivitiesAndPaginationExtend activitiesAndPaginationExtend)
			throws Exception {
		List<Activities> list = activitiesMapper
				.findActivitiesMovieByTypeId(activitiesAndPaginationExtend);
		for (Activities activities : list) {
			activities = (Activities) Filter.filterObject(activities);
		}
		return list;
	}

	@Override
	/***
	 *  官网，乐堡服务中的体检预约 信息显示
	 *  */
	public PageBeanUtil<Activities> findServerWebsiteTemplate(int page,
			String typeId) throws Exception {
		PageBeanUtil<Activities> pageBean = new PageBeanUtil<Activities>();
		pageBean.setTypeId(typeId);
		if (page == 0) {
			page = 1;
			// 设置当前页数:
			pageBean.setPage(page);

			// 设置每页显示记录数:
			int limit = 4;
			pageBean.setLimitPage(limit);
			// 设置总记录数:
			int totalCount = 0;
			totalCount = activitiesMapper.findCountActivitesName(pageBean);
			pageBean.setTotalCount(totalCount);
			// 设置总页数:
			int totalPage = 0;
			// Math.ceil(totalCount / limit);
			if (totalCount % limit == 0) {
				totalPage = totalCount / limit;
			} else {
				totalPage = totalCount / limit + 1;
			}
			pageBean.setTotalPage(totalPage);
			// 每页显示的数据集合:
			// 从哪开始:
			int begin = (page - 1) * limit;
			pageBean.setBegin(begin);
			List<Activities> list = activitiesMapper
					.findServerWebsiteTemplate(pageBean);
			pageBean.setList(list);
		} else {
			// 设置当前页数:
			pageBean.setPage(page);
			// 设置每页显示记录数:
			int limit = 4;
			pageBean.setLimitPage(limit);
			// 设置总记录数:
			int totalCount = 0;
			totalCount = activitiesMapper.findCountActivitesName(pageBean);
			pageBean.setTotalCount(totalCount);
			// 设置总页数:
			int totalPage = 0;
			// Math.ceil(totalCount / limit);
			if (totalCount % limit == 0) {
				totalPage = totalCount / limit;
			} else {
				totalPage = totalCount / limit + 1;
			}
			pageBean.setTotalPage(totalPage);
			// 每页显示的数据集合:
			// 从哪开始:
			int begin = (page - 1) * limit;
			pageBean.setBegin(begin);
			List<Activities> list = activitiesMapper
					.findServerWebsiteTemplate(pageBean);
			pageBean.setList(list);
		}
		return pageBean;
	}

	@Override
	/**统计总记录数*/
	public int findCountServerWebsiteTemplate(PageBeanUtil pageBeanUtil)
			throws Exception {
		int count = activitiesMapper
				.findCountServerWebsiteTemplate(pageBeanUtil);
		return count;
	}

	@Override
	public void updateClickAmountById(String id) {
		activitiesMapper.updateClickAmountById(id);

	}

	@Override
	public List<Activities> findActivitiesMovieClickAmountByTypeId(
			Activities activities) throws Exception {
		// TODO Auto-generated method stub
		activities = (Activities) Filter.filterObject(activities);
		List<Activities> list = activitiesMapper
				.findActivitiesMovieClickAmountByTypeId(activities);
		for (Activities activities2 : list) {
			activities2 = (Activities) Filter.filterObject(activities2);
		}
		return list;
	}

	@Override
	public List<Activities> findActivitiesMovieClickAmountByRegexp(
			Activities activities) throws Exception {
		activities = (Activities) Filter.filterObject(activities);
		List<Activities> list = activitiesMapper
				.findActivitiesMovieClickAmountByRegexp(activities);
		for (Activities activities2 : list) {
			activities2 = (Activities) Filter.filterObject(activities2);
		}
		return list;
	}

	@Override
	public String getActivitieslistMovieByPagination(
			ActivitiesAndPaginationExtend activitiesAndPaginationExtend)
			throws Exception {
		GridManagerList<Activities> list = new GridManagerList<Activities>();
		List<Activities> listActivities = activitiesMapper
				.findActivitiesMovieByTypeId(activitiesAndPaginationExtend);
		for (Activities activities : listActivities) {
			activities = (Activities) Filter.filterObject(activities);
		}
		list.setData(listActivities);
		list.setTotals(activitiesMapper
				.findActivitiesMovieCountTotalByTypeId(activitiesAndPaginationExtend));
		JsonConfig jsonConfig = new JsonConfig();
		jsonConfig.registerJsonValueProcessor(Date.class,
				new JsonDateValueProcessor("yyyy年MM月dd日hh:mm:ss"));
		JSONArray jsonArray = JSONArray.fromObject(list, jsonConfig);
		return jsonArray.toString();
	}

	@Override
	public String findOfficalActivitiesById(String id) throws Exception {
		Activities activities = activitiesMapper.findActivitiesById(id);
		activities = (Activities) Filter.filterObject(activities);
		JsonConfig jsonConfig = new JsonConfig();
		jsonConfig.registerJsonValueProcessor(Date.class,
				new JsonDateValueProcessor());
		JSONArray jsonArray = new JSONArray();
		String data = jsonArray.fromObject(activities, jsonConfig).toString();
		return data;
	}

	@Override
	public String findEchartActiveTypre(Map<String, Object> map) {
		List<Map<String, Object>> maps=activitiesMapper.findEchartActiveTypre(map);
		JSONArray jsonArray=JSONArray.fromObject(maps);
		return jsonArray.toString();
	}

}
