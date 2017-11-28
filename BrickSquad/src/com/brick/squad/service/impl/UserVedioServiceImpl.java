package com.brick.squad.service.impl;

import java.util.Date;

import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.mapper.UserVedioMapper;
import com.brick.squad.pojo.UserVedio;
import com.brick.squad.service.UserVedioService;
import com.brick.squad.util.GridManagerList;
import com.brick.squad.util.JsonDateValueProcessor;
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

	@Override
	public String findUserVedioById(String id) {
		UserVedio userVedio = userVedioMapper.findUserVedioById(id);
		JsonConfig jsonConfig = new JsonConfig();
		jsonConfig.registerJsonValueProcessor(Date.class,
				new JsonDateValueProcessor("yyyy年MM月dd日"));
		JSONObject jsonObject = JSONObject.fromObject(userVedio, jsonConfig);
		return jsonObject.toString();
	}

}
