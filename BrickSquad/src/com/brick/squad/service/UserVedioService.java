package com.brick.squad.service;

import com.brick.squad.pojo.UserVedio;
import com.brick.squad.util.Pagination;

public interface UserVedioService {
	/**
	 * 获取用户视频分页数据
	 * 
	 * @param pagination
	 *            分页条件
	 * @return 分页数据
	 */
	public String findUserVedioList(Pagination pagination);

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
	public String findUserVedioById(String id);
}
