package com.brick.squad.service;

import com.brick.squad.pojo.OnlineParticipationInfo;
import com.brick.squad.util.Pagination;

public interface OnlineParticipationInfoService {
	public void insertOnlineParticipationInfo(
			OnlineParticipationInfo onlineParticipationInfo) throws Exception;

	public String findOnlineParticipationInfoPagination(Pagination pagination)throws Exception;
}
