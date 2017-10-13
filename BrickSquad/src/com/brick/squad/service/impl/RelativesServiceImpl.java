package com.brick.squad.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.RelativesMapper;
import com.brick.squad.pojo.Relatives;
import com.brick.squad.service.RelativesService;
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

}
