package com.brick.squad.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.mapper.UserVedioMapper;
import com.brick.squad.pojo.UserVedio;
import com.brick.squad.service.UserVedioService;
import com.brick.squad.util.GridManagerList;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Util;

public class UserVedioServiceImpl implements UserVedioService {
	@Autowired
	@Qualifier("userVedioMapper")
	private UserVedioMapper userVedioMapper;

	@Override
	public String findUserVedioList(Pagination pagination) {
		Util<UserVedio> util = new Util<UserVedio>();
		String data = util.SplitPage(
				userVedioMapper.findUserVedioPagination(pagination),
				userVedioMapper.findUserVedioPaginationCount(pagination));
		return data;
	}

	@Override
	public void insertUserVedio(UserVedio userVedio) {
		userVedioMapper.insertUserVedio(userVedio);
	}

}
