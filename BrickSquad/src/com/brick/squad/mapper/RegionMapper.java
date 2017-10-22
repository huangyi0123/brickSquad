package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.pojo.Region;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;

public interface RegionMapper {

	public Region findRegionById(String id);

	public void insertRegionById(Region region);

	public void deleteRegionById(String id);

	public void updateRegion(Region region);

	public List<Region> regionPagination(Pagination pagination);

	public int regionCount();

	public List<Region> findRegionByParentId(String perantId);

	//用于数据回显
	public List<Region> findAllRegion ();


	/**
	 * 根据级别选择地区
	 * @param level 级别
	 * @return 区域及id集合
	 */
	public List<Select> findRegionsByLevel(int level);
	public List<Select> findRegionByLevel(int level);
	/**
	 * 根据父id查询区域
	 * @param parentId 父id
	 * @return 区域集合
	 */
	public List<Select> findRegionsByParentId(String parentId);

}
