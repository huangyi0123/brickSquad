package com.brick.squad.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.OnlineParticipationInfoMapper;
import com.brick.squad.pojo.OnlineParticipationInfo;
import com.brick.squad.service.OnlineParticipationInfoService;
import com.brick.squad.util.Filter;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Util;

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

	@Override
	public String findOnlineParticipationInfoPagination(Pagination pagination) throws Exception {
		List<OnlineParticipationInfo> list = onlineParticipationInfoMapper
				.findOnlineParticipationInfoPagination(pagination);
	
		for (OnlineParticipationInfo onlineParticipationInfo : list) {
			onlineParticipationInfo = (OnlineParticipationInfo) Filter
					.filterObject(onlineParticipationInfo);
		}

		int row = list.size();
		Util<OnlineParticipationInfo> oUtil = new Util<OnlineParticipationInfo>();
		String dataString = oUtil.SplitPage(list, row);
		return dataString;
	}

}
