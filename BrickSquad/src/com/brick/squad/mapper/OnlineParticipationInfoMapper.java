package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.pojo.OnlineParticipationInfo;
import com.brick.squad.util.Pagination;

public interface OnlineParticipationInfoMapper {
	public void insertOnlineParticipationInfo(
			OnlineParticipationInfo onlineParticipationInfo);

	public List<OnlineParticipationInfo> findOnlineParticipationInfoPagination(
			Pagination pagination);
}
