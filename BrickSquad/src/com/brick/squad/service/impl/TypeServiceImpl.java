package com.brick.squad.service.impl;

import java.util.List;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.TypeMapper;
import com.brick.squad.pojo.Type;
import com.brick.squad.service.TypeService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;
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
		int n=typeMapper.typeCount(pagination);
		Util<Type> util=new Util<Type>();
		String data=util.SplitPage(datas, n);
		return data;
	}

	@Override
	public String findAllType() {
	  List<Type> typeList = typeMapper.findAllType();
	 JSONArray jsonArray=new JSONArray();
	 String string=jsonArray.fromObject(typeList).toString();
	 return string;
	}

	@Override
	public String findTypeByParentId(String parentId) {
		List<Select> types =typeMapper.findTypeByParentId(parentId);
		JSONArray jsonArray = new JSONArray();
		String dataTytes =jsonArray.fromObject(types).toString();
		return dataTytes;
	}

	@Override
	public List<Select> findType() {
		return typeMapper.findType();
	}

	@Override
	/***
	 * 医疗器械一级分类查询
	 */
	public List<Type> findIdAndTypeNmae(String parentId) throws Exception {
		List<Type> listType=typeMapper.findIdAndTypeNmae(parentId);
		return listType;
	}

	@Override
	public List<Type> getArctre() {
		List<Type> arcrte=typeMapper.findTyepByParentId("splx");
		
		return null;
	}

}
