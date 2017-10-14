package com.brick.squad.service;

import java.util.List;

import com.brick.squad.pojo.Region;

public interface RegionService {
	public List<Region> findRegionByLevel(int level);
	public Region findRegionById(String id);
	public void insertRegionById(Region region);
	public void deleteRegionById(String id);
	public void updateRegion(Region region);

}
