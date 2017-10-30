package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.expand.LimitsExpand;
import com.brick.squad.pojo.Limits;
import com.brick.squad.util.Pagination;

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
	/**
	 * 根据分页条件查询数据
	 * @param pagination 分页条件
	 * @return 权限数据
	 */
	public List<LimitsExpand> limitsPagination(Pagination pagination);
	/**
	 * 查询权限记录数
	 * @return 记录数
	 */
	public int limitsCount(Pagination pagination);
}
