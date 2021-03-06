package com.brick.squad.service.impl;

import java.util.ArrayList;
import java.util.List;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.mapper.GuidanceMapper;
import com.brick.squad.mapper.PersonalInformationMapper;
import com.brick.squad.pojo.Guidance;
import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.service.GuidanceService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;
import com.brick.squad.util.Util;

public class GuidanceServiceImpl implements GuidanceService {
	@Autowired
	@Qualifier("guidanceMapper")
	private GuidanceMapper guidanceMapper;
	@Autowired
	@Qualifier("personalInformationMapper")
	private PersonalInformationMapper personalInformationMapper;

	@Override
	public void insertGuidanceById(Guidance guidance) throws Exception {
		// TODO Auto-generated method stub
		guidanceMapper.insertGuidanceById(guidance);
	}

	@Override
	public Guidance queryGuidanceById(String id) throws Exception {
		// TODO Auto-generated method stub
		return guidanceMapper.queryGuidanceById(id);
	}

	@Override
	public void deleteGuidanceById(String id) throws Exception {
		// TODO Auto-generated method stub
		guidanceMapper.deleteGuidanceById(id);
	}

	@Override
	public void updateGuidanceById(Guidance guidance) throws Exception {
		// TODO Auto-generated method stub
		guidanceMapper.updateGuidanceById(guidance);
	}

	@Override
	public String guidancePagination(Pagination pagination) throws Exception {
		// TODO Auto-generated method stub
		List<Guidance> list = new ArrayList<Guidance>();
		Util<Guidance> util = new Util<Guidance>();
		list = guidanceMapper.guidancePagination(pagination);
		int row = guidanceMapper.findGuidanceAllCount(pagination);
		String dataString = util.SplitPage(list, row);
		return dataString;
	}

	/*
	 * @Override public int findGuidanceAllCount(Pagination pagination) throws
	 * Exception { // TODO Auto-generated method stub return
	 * guidanceMapper.findGuidanceAllCount(pagination); }
	 */
	// 封装json数据
	@Override
	public String findPerIdAndIdCard() {
		// TODO Auto-generated method stub
		List<PersonalInformation> list = personalInformationMapper
				.findPerIdAndIdCard();
		JSONArray jsonArray = new JSONArray();
		String dataString = jsonArray.fromObject(list).toString();
		return dataString;
	}

}
