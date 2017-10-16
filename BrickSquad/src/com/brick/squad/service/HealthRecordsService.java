package com.brick.squad.service;

import com.brick.squad.pojo.HealthRecords;

public interface HealthRecordsService {
	public void insertHealthRecords(HealthRecords healthRecords);

	public HealthRecords findHealthRecordsById(String id);

	public void deleteHealthRecordsById(String id);

	public void updateHealthRecordsById(HealthRecords healthRecords);

}
