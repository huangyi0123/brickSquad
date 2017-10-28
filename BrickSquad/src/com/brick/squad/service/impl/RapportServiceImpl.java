package com.brick.squad.service.impl;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.expand.RapportExpand;
import com.brick.squad.mapper.PersonalInformationMapper;
import com.brick.squad.mapper.RapportMapper;
import com.brick.squad.mapper.UserMapper;
import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.pojo.Rapport;
import com.brick.squad.service.RapportService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;
import com.brick.squad.util.Util;
/**
 * 业务层：实现老人客户沟通接口实现类
 * */
public class RapportServiceImpl implements RapportService{
	@Autowired
	@Qualifier("rapportMapper")
	private RapportMapper rapportMapper;
	@Autowired
	@Qualifier("userMapper")
	private UserMapper userMapper;
	@Autowired
	@Qualifier("personalInformationMapper")
	private PersonalInformationMapper personalInformationMapper;
	@Override
	/**根据ID查询老人客户沟通信息*/
	public Rapport findRapportById(String id) {
		Rapport rapport=rapportMapper.findRapportById(id);
		return rapport;
	}
	@Override
	/**插入老人客户沟通信息*/
	public void insertRapport(Rapport rapport) throws Exception {
		rapportMapper.insertRapport(rapport);
	}
	@Override
	/**根据ID修改老人客户沟通信息*/
	public void updateRapportByID(Rapport rapport) throws Exception {
		rapportMapper.updateRapportByID(rapport);
	}
	@Override
	/**根据ID删除老人客户沟通信息*/
	public void deleteRapportById(String id) throws Exception {
		rapportMapper.deleteRapportById(id);
	}
	@Override
	/**查询老人客户沟通信息*/
	public List<Rapport> findRapport() throws Exception {
		List<Rapport> rapport=rapportMapper.findRapport();
		return rapport;
	}
	/*@Override
	*//**查询老人客户沟通总数*//*
	public Integer findRapportCount() throws Exception {
		Integer countRapport=rapportMapper.findRapportCount();
		return countRapport;
	}*/
	@Override
	/**老人客户沟通分页查询*/
	public String rapportPagination(Pagination pagination)
			throws Exception {
		List<RapportExpand> regions=rapportMapper.rapportPagination(pagination);
		int row=rapportMapper.findRapportCount(pagination);
		Util<RapportExpand> util=new Util<RapportExpand>();
		String data=util.SplitPage(regions, row);
		return data;
	}
	@Override
	/**查询用户和老人所有信息*/
	public String findAllUserAndPersonalInformation() {
		List<Select> users=userMapper.findAllUser();
		List<Select> personalInformations=personalInformationMapper.findAllPersonalInformation();
		Map<String, List> map=new HashMap<String, List>();
		map.put("user", users);
		map.put("personalInformation", personalInformations);
		JSONArray jsonArray=new JSONArray();
		String data=jsonArray.fromObject(map).toString();
		return data;
	}
	
	@Override
	/**根据老人客户ID关联查询需要字段以及老人客户所有信息*/
	public RapportExpand findRapportAndUserAndPersonalInformation(String id)
			throws Exception {
		RapportExpand rapportExpand=rapportMapper.findRapportAndUserAndPersonalInformation(id);
		return rapportExpand;
	}
	
}
