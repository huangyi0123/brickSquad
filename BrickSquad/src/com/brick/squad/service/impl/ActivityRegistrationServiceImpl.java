package com.brick.squad.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.expand.ActivityRegistrationExpand;
import com.brick.squad.mapper.ActivityRegistrationMapper;
import com.brick.squad.pojo.ActivityRegistration;
import com.brick.squad.service.ActivityRegistrationService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Util;

@Transactional
public class ActivityRegistrationServiceImpl implements
		ActivityRegistrationService {
	@Autowired
	@Qualifier("activityRegistrationMapper")
	private ActivityRegistrationMapper activityRegistrationMapper;

	@Override
	public ActivityRegistration findActivityRegistrationById(String id) {

		activityRegistrationMapper.findActivityRegistrationById(id);
		return activityRegistrationMapper.findActivityRegistrationById(id);
	}

	@Override
	public void insertActivityRegistration(
			ActivityRegistration activityRegistration) {
		activityRegistrationMapper
				.insertActivityRegistration(activityRegistration);
	}

	@Override
	public void updateActivityRegistrationById(
			ActivityRegistration activityRegistration) {
		activityRegistrationMapper
				.updateActivityRegistrationById(activityRegistration);
	}

	@Override
	public void deleteActivityRegistrationById(String id) {
		activityRegistrationMapper.deleteActivityRegistrationById(id);
	}

	@Override
	public String activityRegistrationPagination(Pagination pagination) {
		List<ActivityRegistrationExpand> datas = activityRegistrationMapper
				.activityRegistrationPagination(pagination);
		int n = activityRegistrationMapper
				.activityRegistrationCount(pagination);
		Util<ActivityRegistrationExpand> util = new Util<ActivityRegistrationExpand>();
		String data = util.SplitPage(datas, n);
		return data;
	}

	@Override
	public ActivityRegistrationExpand findActivityRegistrationAndPersonalInformationAndActivities(
			String id) {
		ActivityRegistrationExpand activityRegistrationExpand = activityRegistrationMapper
				.findActivityRegistrationAndPersonalInformationAndActivities(id);
		return activityRegistrationExpand;
	}

}
