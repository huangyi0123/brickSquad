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
import com.brick.squad.util.Select;
import com.brick.squad.util.Util;
@Transactional
public class RegionServiceImpl implements RegionService {
	@Autowired
	@Qualifier("regionMapper")
	private RegionMapper regionMapper;
	@Override
	public String findRegionByLevel(int level) {
		List<Select> regions =regionMapper.findRegionsByLevel(level);
		JSONArray jsonArray = new JSONArray();
		String dataregion =jsonArray.fromObject(regions).toString();
		return dataregion;
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
		List<Region> regions=regionMapper.regionPagination(pagination);
		int row=regionMapper.regionCount();
		Util<Region> util=new Util<Region>();
		String data=util.SplitPage(regions, row);
		return data;
	}
	@Override
	public String findRegionByParentId(String perantId) {
		List<Region> regions = regionMapper.findRegionByParentId(perantId);
		JSONArray jsonArray = new JSONArray();
		String dataregion =jsonArray.fromObject(regions).toString();
		return dataregion;
	}
	@Override
	public String findAllRegion() {
		// TODO Auto-generated method stub
		List<Region> list = regionMapper.findAllRegion();
		JSONArray jsonArray = new	JSONArray();
		String data = jsonArray.fromObject(list).toString();
		return data;
	}
}
