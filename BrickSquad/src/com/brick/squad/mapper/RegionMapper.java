package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.pojo.Region;

public interface RegionMapper {
	public List<Region> findRegionByLevel(int level);
	public List<Region> findRegionByPerantId(String perantId);
}
