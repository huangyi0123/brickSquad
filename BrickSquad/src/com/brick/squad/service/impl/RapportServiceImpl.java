package com.brick.squad.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.mapper.RapportMapper;
import com.brick.squad.pojo.Rapport;
import com.brick.squad.service.RapportService;
/**
 * 业务层：实现老人客户沟通接口实现类
 * */
public class RapportServiceImpl implements RapportService{
	@Autowired
	@Qualifier("rapportMapper")
	private RapportMapper rapportMapper;
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
	

}
