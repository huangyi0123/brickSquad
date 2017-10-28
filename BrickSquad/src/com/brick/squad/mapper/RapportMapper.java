package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.expand.RapportExpand;
import com.brick.squad.pojo.Rapport;
import com.brick.squad.util.Pagination;

/**
 * 老人客户沟通的mapper操作
 * */
public interface RapportMapper {
	/**
	 * 根据ID查询老人客户沟通信息
	 * */
	public Rapport findRapportById(String id);
	/**
	 * 查询老人客户沟通信息
	 * */
	public List<Rapport> findRapport();
	/**
	 * 插入老人客户沟通信息
	 * */
	public void insertRapport(Rapport rapport);
	/**
	 * 根据ID修改老人客户沟通信息
	 * */
	public void updateRapportByID(Rapport rapport);
	/**
	 * 根据ID删除老人客户沟通信息
	 * */
	public void deleteRapportById(String id);
	/**查询老人客户总数*/
	public Integer findRapportCount(Pagination pagination);
	/**
	 * 老人客户沟通分页查询
	 * */
	public List<RapportExpand> rapportPagination(Pagination pagination);
	/***
	 * 根据老人客户ID关联查询需要字段以及老人客户所有信息
	 */
	public RapportExpand findRapportAndUserAndPersonalInformation(String id);
	
}
