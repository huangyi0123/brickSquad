package com.brick.squad.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.expand.ActivitiesExpand;
import com.brick.squad.mapper.ActivitiesMapper;
import com.brick.squad.mapper.TypeMapper;
import com.brick.squad.mapper.UserMapper;
import com.brick.squad.pojo.Activities;
import com.brick.squad.pojo.Article;
import com.brick.squad.pojo.Type;
import com.brick.squad.service.ActivitiesService;
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
	public Activities findActivitiesById(String id) {
		return activitiesMapper.findActivitiesById(id);
	}

	@Override
	public void insertActivitiesById(Activities activities) {
		// TODO Auto-generated method stub
		activitiesMapper.insertActivities(activities);

	}

	@Override
	public void deleteActivitiesById(String id) {
		// TODO Auto-generated method stub
		activitiesMapper.deleteActivitiesById(id);
	}

	@Override
	public void updateActivitiesById(Activities activities) {
		// TODO Auto-generated method stub
		activitiesMapper.updateActivitiesById(activities);
	}

	// 分页查询
	@Override
	public String activitiesPagination(Pagination pagination) {

		List<Activities> activities = activitiesMapper
				.activitiesPagination(pagination);

		int row = activitiesMapper.findActivitiesAllCount();

		Util<Activities> util = new Util<Activities>();

		String data = util.SplitPage(activities, row);
		return data;
	}

	@Override
	public int findActivitiesAllCount() {
		// TODO Auto-generated method stub
		return activitiesMapper.findActivitiesAllCount();
	}

	@Override
	public String findAllActivities() {
		List<ActivitiesExpand> activities = activitiesMapper
				.findAllActivities();
		JSONArray jsonArray = new JSONArray();
		String data = jsonArray.fromObject(activities).toString();
		return data;
	}

	@Override
	public String findAllTypeAndUser() {
		List<Select> user = userMapper.findAllUser();
		List<Select> type = typeMapper.findTypeByParentId("lrhd");
		Map<String, List> map = new HashMap<String, List>();
		map.put("user", user);
		map.put("type", type);
		JSONArray jsonArray = new JSONArray();
		String data = jsonArray.fromObject(map).toString();
		return data;
	}

	@Override
	public ActivitiesExpand findActivitiesAndTpyeAndUser(String id) {
		ActivitiesExpand activitiesExpand = activitiesMapper
				.findActivitiesAndTpyeAndUser(id);
		return activitiesExpand;
	}

	@Override
	public String findAllActivitiesIdAndName() {
		// TODO Auto-generated method stub
		List<Select> list = activitiesMapper.findAllActivitiesIdAndName();
		JSONArray jsonArray = new JSONArray();
		String dataString = jsonArray.fromObject(list).toString();
		return dataString;
	}

	@Override
	/**
	 * 查询活动名称 ,用于首页的报名回显*/
	public String findActivityName() throws Exception {
		List<Activities> listArticities=activitiesMapper.findActivityName();
		JSONArray jsonArray=new JSONArray();
		String data=jsonArray.fromObject(listArticities).toString();
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
			List<Activities> list = activitiesMapper.findActivitesName(pageBean);
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
			List<Activities> list = activitiesMapper.findActivitesName(pageBean);
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
		int count =activitiesMapper.findCountActivitesName(pageBeanUtil);
		return count;
	}

}
