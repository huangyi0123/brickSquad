package com.brick.squad.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.RegionMapper;
import com.brick.squad.pojo.Region;
import com.brick.squad.service.RegionService;
@Transactional
public class RegionServiceImpl implements RegionService {
	@Autowired
	@Qualifier("regionMapper")
	private RegionMapper regionMapper;
	@Override
	public List<Region> findRegionByLevel(int level) {
		return regionMapper.findRegionByLevel(level);
	}
	@Override
	public List<Region> findRegionByPerantId(String perantId) {
		return regionMapper.findRegionByPerantId(perantId);
	}

}
