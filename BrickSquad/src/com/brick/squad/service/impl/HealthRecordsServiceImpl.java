package com.brick.squad.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.HealthRecordsMapper;
import com.brick.squad.pojo.HealthRecords;
import com.brick.squad.service.HealthRecordsService;
import com.brick.squad.util.Pagination;

@Transactional
public class HealthRecordsServiceImpl implements HealthRecordsService {
	@Autowired
	@Qualifier("healthRecordsMapper")
	private HealthRecordsMapper healthRecordsMapper;

	@Override
	public void insertHealthRecords(HealthRecords healthRecords) {

		healthRecordsMapper.insertHealthRecords(healthRecords);

	}

	@Override
	public HealthRecords findHealthRecordsById(String id) {

		return healthRecordsMapper.findHealthRecordsById(id);
	}

	@Override
	public void deleteHealthRecordsById(String id) {
		healthRecordsMapper.deleteHealthRecordsById(id);

	}

	@Override
	public void updateHealthRecordsById(HealthRecords healthRecords) {

		healthRecordsMapper.updateHealthRecordsById(healthRecords);
	}

	@Override
	public List<HealthRecords> healthRecordsPagination(Pagination pagination) {
		// TODO Auto-generated method stub
		return healthRecordsMapper.healthRecordsPagination(pagination);
	}

}
