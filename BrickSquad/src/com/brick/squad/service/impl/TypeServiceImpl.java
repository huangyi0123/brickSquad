package com.brick.squad.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.TypeMapper;
import com.brick.squad.pojo.ActivityRegistration;
import com.brick.squad.pojo.Type;
import com.brick.squad.service.TypeService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Util;

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

	@Override
	public String typePagination(Pagination pagination) {
		List<Type> datas=typeMapper.typePagination(pagination);
		int n=typeMapper.typeCount();
		Util<Type> util=new Util<Type>();
		String data=util.SplitPage(datas, n);
		return data;
	}

}
