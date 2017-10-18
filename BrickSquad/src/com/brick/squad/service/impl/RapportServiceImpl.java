package com.brick.squad.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.mapper.RapportMapper;
import com.brick.squad.pojo.Rapport;
import com.brick.squad.service.RapportService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Util;
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
	@Override
	/**查询老人客户沟通信息*/
	public List<Rapport> findRapport() throws Exception {
		List<Rapport> rapport=rapportMapper.findRapport();
		return rapport;
	}
	@Override
	/**查询老人客户沟通总数*/
	public Integer findRapportCount() throws Exception {
		Integer countRapport=rapportMapper.findRapportCount();
		return countRapport;
	}
	@Override
	/**老人客户沟通分页查询*/
	public String rapportCarPagination(Pagination pagination)
			throws Exception {
		List<Rapport> regions=rapportMapper.rapportCarPagination(pagination);
		int row=rapportMapper.findRapportCount();
		Util<Rapport> util=new Util<Rapport>();
		String data=util.SplitPage(regions, row);
		return data;
	}
}
