package com.brick.squad.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

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
	public void insertActivityRegistration(ActivityRegistration activityRegistration) {
		activityRegistrationMapper.insertActivityRegistration(activityRegistration);
	}

	@Override
	public void updateActivityRegistrationById(ActivityRegistration activityRegistration) {
		activityRegistrationMapper.updateActivityRegistrationById(activityRegistration);
	}

	@Override
	public void deleteActivityRegistrationById(String id) {
		activityRegistrationMapper.deleteActivityRegistrationById(id);
	}

}
