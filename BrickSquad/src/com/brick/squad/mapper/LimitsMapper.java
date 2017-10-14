package com.brick.squad.mapper;

import com.brick.squad.pojo.Limits;

public interface LimitsMapper {
	/**
	 * 通过id获取权限信息
	 * @param id 权限id
	 * @return 权限信息
	 */
	public Limits findLimitsById(String id);
	/**
	 * 插入权限信息
	 * @param limits 权限信息
	 */
	public void insertLimits(Limits limits);
	/**
	 * 根据id修改权限信息
	 * @param limits 权限信息
	 */
	public void updateLimitsById(Limits limits);
	/**
	 * 根据id删除权限
	 * @param id 权限id
	 */
	public void deleteLimitsById(String id);
}
