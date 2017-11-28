package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.pojo.UserVedio;
import com.brick.squad.util.Pagination;

public interface UserVedioMapper {
	/**
	 * 用户视频分页
	 * 
	 * @param pagination
	 *            分页条件
	 * @return 分页后数据
	 */
	public List<UserVedio> findUserVedioPagination(Pagination pagination);

	/**
	 * 根据分页条件获取记录数
	 * 
	 * @param pagination
	 *            分页条件
	 * @return 记录数
	 */
	public int findUserVedioPaginationCount(Pagination pagination);

	/**
	 * 插入用户视频
	 * 
	 * @param userVedio
	 *            用户视频
	 */
	public void insertUserVedio(UserVedio userVedio);

	/**
	 * 根据id查询用户视频
	 * 
	 * @param id
	 *            id
	 * @return 用户视频
	 */
	public UserVedio findUserVedioById(String id);
}
