package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.expand.HealthRecordsExpand;
import com.brick.squad.pojo.HealthRecords;
import com.brick.squad.util.Pagination;

/**
 * 
 * @author 吴文鑫
 * 
 */
public interface HealthRecordsMapper {

	public void insertHealthRecords(HealthRecords healthRecords);

	public void deleteHealthRecordsById(String id);

	public HealthRecords findHealthRecordsById(String id);

	public void updateHealthRecordsById(HealthRecords healthRecords);

	public List<HealthRecordsExpand> healthRecordsPagination(Pagination pagination);
	public int findHealthRecordsAllCount(Pagination pagination);

}
