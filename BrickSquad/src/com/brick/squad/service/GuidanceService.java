package com.brick.squad.service;

import java.util.List;

import com.brick.squad.pojo.Guidance;
import com.brick.squad.util.Pagination;

public interface GuidanceService {
	public void insertGuidanceById(Guidance guidance) throws Exception;
	public Guidance queryGuidanceById(String id) throws Exception;
	public  void deleteGuidanceById(String id) throws Exception;
	public void updateGuidanceById(Guidance guidance) throws Exception;
	public String guidancePagination(Pagination pagination) throws Exception;
	public int findGuidanceAllCount() throws Exception;
}
