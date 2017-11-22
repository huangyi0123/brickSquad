package com.brick.squad.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.OnlineParticipationInfoMapper;
import com.brick.squad.pojo.OnlineParticipationInfo;
import com.brick.squad.service.OnlineParticipationInfoService;
import com.brick.squad.util.Filter;

@Transactional
public class OnlineParticipationInfoServiceImpl implements
		OnlineParticipationInfoService {
	@Autowired
	@Qualifier("onlineParticipationInfoMapper")
	private OnlineParticipationInfoMapper onlineParticipationInfoMapper;

	@Override
	public void insertOnlineParticipationInfo(
			OnlineParticipationInfo onlineParticipationInfo) throws Exception {
		onlineParticipationInfo.setSubmitTime(new Date());
		onlineParticipationInfo = (OnlineParticipationInfo) Filter
				.filterObject(onlineParticipationInfo);
		onlineParticipationInfoMapper
				.insertOnlineParticipationInfo(onlineParticipationInfo);

	}

}
