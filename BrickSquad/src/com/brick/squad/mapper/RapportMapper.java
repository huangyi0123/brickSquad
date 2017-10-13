package com.brick.squad.mapper;

import com.brick.squad.pojo.Rapport;

/**
 * 老人客户沟通的mapper操作
 * */
public interface RapportMapper {
	/**
	 * 根据ID查询老人客户沟通信息
	 * */
	public Rapport findRapportById(String id);
	
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
	
}
