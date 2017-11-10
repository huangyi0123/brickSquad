package com.brick.squad.service;

import com.brick.squad.pojo.Guidance;
import com.brick.squad.util.Pagination;

public interface GuidanceService {
	public void insertGuidanceById(Guidance guidance) throws Exception;

	public Guidance queryGuidanceById(String id) throws Exception;

	public void deleteGuidanceById(String id) throws Exception;

	public void updateGuidanceById(Guidance guidance) throws Exception;

	public String guidancePagination(Pagination pagination) throws Exception;

	// public int findGuidanceAllCount() throws Exception;
	// 得到从信息表中查询出来的接口信息
	public String findPerIdAndIdCard();
}
