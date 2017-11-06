package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.pojo.Guidance;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;

public interface GuidanceMapper {
	public void insertGuidanceById(Guidance guidance) throws Exception;
	public Guidance queryGuidanceById(String id) throws Exception;
	public  void deleteGuidanceById(String id) throws Exception;
	public void updateGuidanceById(Guidance guidance) throws Exception;
	public List<Guidance> guidancePagination(Pagination pagination) throws Exception;
	public int findGuidanceAllCount (Pagination pagination) throws Exception;
	//根据per_id删除整条信息
	public void deleteByIdGuidance(String perId);
}
