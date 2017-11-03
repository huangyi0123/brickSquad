package com.brick.squad.service;

import java.util.List;
import java.util.Map;

import com.brick.squad.pojo.Limits;
import com.brick.squad.util.Pagination;

public interface LimitsService {
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
	/**
	 * 根据分页条件查询数据
	 * @param pagination 分页条件
	 * @return 权限数据json数据
	 */
	public String limitsPagination(Pagination pagination);
	/**
	 * 根据角色id查询权限
	 * @param roleId 角色id
	 * @return 权限
	 */
	public String findAllTableName(String roleId);
	public void updateLimitsByRoleId(List<Limits> limits,String roleId);
	public Map<String, Limits>findAllLimitsByRoleId(String roleId);
}
