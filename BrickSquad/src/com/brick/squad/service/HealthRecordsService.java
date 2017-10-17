package com.brick.squad.service;

import java.util.List;

import com.brick.squad.pojo.HealthRecords;
import com.brick.squad.util.Pagination;

public interface HealthRecordsService {
	public void insertHealthRecords(HealthRecords healthRecords);

	public HealthRecords findHealthRecordsById(String id);

	public void deleteHealthRecordsById(String id);

	public void updateHealthRecordsById(HealthRecords healthRecords);
	public List<HealthRecords> healthRecordsPagination(Pagination pagination);
	public int findHealthRecordsAllCount();
}
