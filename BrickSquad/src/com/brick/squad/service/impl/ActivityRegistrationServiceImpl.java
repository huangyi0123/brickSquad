package com.brick.squad.service.impl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.mapper.ActivityRegistrationMapper;
import com.brick.squad.pojo.ActivityRegistration;
import com.brick.squad.service.ActivityRegistrationService;

@Transactional
public class ActivityRegistrationServiceImpl implements ActivityRegistrationService{
    @Autowired
    @Qualifier("activityRegistrationMapper")
	private ActivityRegistrationMapper activityRegistrationMapper;
	@Override
	public ActivityRegistration findActivityRegistrationById(String id) {
		
		return activityRegistrationMapper.findActivityRegistrationById(id);
	}

	@Override
	public void insert(ActivityRegistration activityRegistration) {
		// TODO Auto-generated method stub
		activityRegistrationMapper.insert(activityRegistration);
	}

	@Override
	public void update(ActivityRegistration activityRegistration) {
		// TODO Auto-generated method stub
		activityRegistrationMapper.update(activityRegistration);
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		activityRegistrationMapper.delete(id);
	}

}
