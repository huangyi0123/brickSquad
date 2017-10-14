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
	public Region findRegionById(String id) {
		return regionMapper.findRegionById(id);
	}
	@Override
	public void insertRegionById(Region region){
		regionMapper.insertRegionById(region);
	}
	@Override
	public void updateRegion(Region region){
		regionMapper.updateRegion(region);
	}
	@Override
	public void deleteRegionById(String id) {
		// TODO Auto-generated method stub
		regionMapper.deleteRegionById(id);
	}
}
