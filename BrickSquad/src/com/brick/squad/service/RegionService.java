package com.brick.squad.service;

import java.util.List;

import com.brick.squad.pojo.Region;

public interface RegionService {
	public List<Region> findRegionByLevel(int level);
	public List<Region> findRegionByPerantId(String perantId);
}
