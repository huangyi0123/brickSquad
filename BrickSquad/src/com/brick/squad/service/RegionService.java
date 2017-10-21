package com.brick.squad.service;

import com.brick.squad.pojo.Region;
import com.brick.squad.util.Pagination;

public interface RegionService {
	public String findRegionByLevel(int level);

	public Region findRegionById(String id);

	public void insertRegionById(Region region);

	public void deleteRegionById(String id);

	public void updateRegion(Region region);

	/**
	 * 通过分页条件返回json数据
	 * 
	 * @param pagination
	 *            分页条件
	 * @return json数据
	 */
	public String regionPagination(Pagination pagination);

	public String findRegionByParentId(String perantId);
}
