package com.brick.squad.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.TypeMapper;
import com.brick.squad.pojo.Type;
import com.brick.squad.service.TypeService;

@Transactional
public class TypeServiceImpl implements TypeService{

	@Autowired
	@Qualifier("typeMapper")
	private TypeMapper typeMapper;
	
	@Override
	public Type findTypeById(String id) {
		return typeMapper.findTypeById(id);
	}

	@Override
	public void insertType(Type type) {
		typeMapper.insertType(type);
		
	}

	@Override
	public void updateTypeById(Type type) {
		typeMapper.updateTypeById(type);
		
	}

	@Override
	public void deleteTypeById(String id) {
		typeMapper.deleteTypeById(id);
		
	}

}
