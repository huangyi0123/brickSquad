package com.brick.squad.service;

import java.util.List;

import com.brick.squad.expand.RapportExpand;
import com.brick.squad.pojo.Rapport;
import com.brick.squad.util.Pagination;

/**
 * 业务层：老人客户沟通
 * */
public interface RapportService {
	/**
	 * 根据ID查询老人客户沟通信息
	 * */
	public Rapport findRapportById(String id) throws Exception;

	/**
	 * 查询老人客户沟通信息
	 * */
	public List<Rapport> findRapport() throws Exception;

	/**
	 * 插入老人客户沟通信息
	 * */
	public void insertRapport(Rapport rapport) throws Exception;

	/**
	 * 根据ID修改老人客户沟通信息
	 * */
	public void updateRapportByID(Rapport rapport) throws Exception;

	/**
	 * 根据ID删除老人客户沟通信息
	 * */
	public void deleteRapportById(String id) throws Exception;

	/**
	 * 查询老人客户总数
	 * */
	// public Integer findRapportCount()throws Exception;
	/**
	 * 老人客户沟通分页查询
	 * */
	public String rapportPagination(Pagination pagination) throws Exception;

	/**
	 * 查询用户和老人所有信息
	 * */
	public String findAllUserAndPersonalInformation();

	/***
	 * 根据老人客户ID关联查询需要字段以及老人客户所有信息
	 */
	public RapportExpand findRapportAndUserAndPersonalInformation(String id)
			throws Exception;
}
