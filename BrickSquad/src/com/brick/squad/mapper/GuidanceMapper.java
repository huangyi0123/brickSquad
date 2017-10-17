package com.brick.squad.mapper;

import com.brick.squad.pojo.Guidance;

public interface GuidanceMapper {
	public void insertGuidanceById(Guidance guidance) throws Exception;
	public Guidance queryGuidanceById(String id) throws Exception;
	public  void deleteGuidanceById(String id) throws Exception;
	public void updateGuidanceById(Guidance guidance) throws Exception;
	
}
