package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.pojo.Region;
import com.brick.squad.util.Pagination;

public interface RegionMapper {
	public List<Region> findRegionByLevel(int level);

	public Region findRegionById(String id);

	public void insertRegionById(Region region);

	public void deleteRegionById(String id);

	public void updateRegion(Region region);

	public List<Region> regionPagination(Pagination pagination);

	public int regionCount();

	public List<Region> findRegionByParentId(String perantId);
	//用于数据回显
	public List<Region> findAllRegion ();

}
