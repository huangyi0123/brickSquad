package com.brick.squad.mapper;

import com.brick.squad.pojo.HealthRecords;

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
	
}
