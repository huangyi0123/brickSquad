package com.brick.squad.service.impl;

import java.util.List;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.RegionMapper;
import com.brick.squad.pojo.Region;
import com.brick.squad.service.RegionService;
import com.brick.squad.util.GridManagerList;
import com.brick.squad.util.Pagination;
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
	@Override
	public String regionPagination(Pagination pagination) {
		GridManagerList<Region> gridManagerList=new GridManagerList<Region>();
		List<Region> regions=regionMapper.regionPagination(pagination);
		gridManagerList.setStatus("success");
		gridManagerList.setData(regions);
		gridManagerList.setTotals(regionMapper.regionCount());
		JSONArray jsonArray=JSONArray.fromObject(gridManagerList);
		String data=jsonArray.toString();
		data=data.substring(1,data.length()-1);
		return data;
	}
}
