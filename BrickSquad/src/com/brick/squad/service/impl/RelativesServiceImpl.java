package com.brick.squad.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.RelativesMapper;
import com.brick.squad.pojo.Relatives;
import com.brick.squad.service.RelativesService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Util;

@Transactional
public class RelativesServiceImpl implements RelativesService {
	@Autowired
	@Qualifier("relativesMapper")
	private RelativesMapper relativesMapper;

	@Override
	public Relatives findRelativesById(String id) {
		return relativesMapper.findRelativesById(id);
	}

	@Override
	public void insertRelatives(Relatives relatives) {
		relativesMapper.insertRelatives(relatives);

	}

	@Override
	public void updateRelativesById(Relatives relatives) {
		relativesMapper.updateRelativesById(relatives);

	}

	@Override
	public void deleteRelativesById(String id) {
		relativesMapper.deleteRelativesById(id);

	}

	/**
	 * 分页查询
	 */
	@Override
	public String relativesPagination(Pagination pagination) {
		List<Relatives> relatives = relativesMapper
				.relativesPagination(pagination);
		int row = relativesMapper.findRelativesAllCount();
		Util<Relatives> util = new Util<>();
		String data = util.SplitPage(relatives, row);
		return data;
	}

}
