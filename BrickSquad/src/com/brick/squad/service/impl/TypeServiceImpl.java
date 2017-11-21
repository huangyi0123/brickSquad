package com.brick.squad.service.impl;

import java.util.List;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.expand.TypeExpand;
import com.brick.squad.mapper.TypeMapper;
import com.brick.squad.pojo.Article;
import com.brick.squad.pojo.Type;
import com.brick.squad.service.TypeService;
import com.brick.squad.util.PageBeanUtil;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;
import com.brick.squad.util.Util;

@Transactional
public class TypeServiceImpl implements TypeService {

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
		List<Type> datas = typeMapper.typePagination(pagination);
		int n = typeMapper.typeCount(pagination);
		Util<Type> util = new Util<Type>();
		String data = util.SplitPage(datas, n);
		return data;
	}

	@Override
	public String findAllType() {
		List<Type> typeList = typeMapper.findAllType();
		JSONArray jsonArray = new JSONArray();
		String string = jsonArray.fromObject(typeList).toString();
		return string;
	}

	@Override
	public String findTypeByParentId(String parentId) {
		List<Select> types = typeMapper.findTypeByParentId(parentId);
		JSONArray jsonArray = new JSONArray();
		String dataTytes = jsonArray.fromObject(types).toString();
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
	public List<TypeExpand> findIdAndTypeNmae(String parentId) throws Exception {
		List<TypeExpand> listType = typeMapper.findIdAndTypeNmae(parentId);
		return listType;
	}

	@Override
	public List<Type> getArctre(String id) {
		List<Type> arcrte = typeMapper.findTyepByParentId(id);
		return arcrte;
	}

	@Override
	public String getArticleType(String id) {
		List<Type> types = typeMapper.findTyepByParentId(id);
		for (Type type : types) {
			type.setChdren(typeMapper.findTyepByParentId(type.getId()));
		}
		JSONArray jsonArray = JSONArray.fromObject(types);
		return jsonArray.toString();
	}

	@Override
	/**
	 * 查询所有的商品类别，用于搜索框
	 * */
	public List<Type> findAllTypeByParentId(String parentId) throws Exception {
		List<Type> listType=typeMapper.findAllTypeByParentId(parentId);
		return listType;
	}

	@Override
	/**
	 * 官网首页搜索
	 * */
	public PageBeanUtil<Type> searchName(int page, String search)
			throws Exception {
		PageBeanUtil<Type> pageBean = new PageBeanUtil<Type>();
		pageBean.setSearch(search);
		if (page == 0) {
			page = 1;
			// 设置当前页数:
			pageBean.setPage(page);
			
			// 设置每页显示记录数:
			int limit = 2;
			pageBean.setLimitPage(limit);
			// 设置总记录数:
			int totalCount = 0;
			totalCount = typeMapper.findCountSearch(pageBean);
			pageBean.setTotalCount(totalCount);
			// 设置总页数:
			int totalPage = 0;
			// Math.ceil(totalCount / limit);
			if (totalCount % limit == 0) {
				totalPage = totalCount / limit;
			} else {
				totalPage = totalCount / limit + 1;
			}
			pageBean.setTotalPage(totalPage);
			// 每页显示的数据集合:
			// 从哪开始:
			int begin = (page - 1) * limit;
			pageBean.setBegin(begin);
			List<Type> list = typeMapper.searchName(pageBean);
			pageBean.setList(list);
		} else {
			// 设置当前页数:
			pageBean.setPage(page);
			// 设置每页显示记录数:
			int limit = 2;
			pageBean.setLimitPage(limit);
			// 设置总记录数:
			int totalCount = 0;
			totalCount = typeMapper.findCountSearch(pageBean);
			pageBean.setTotalCount(totalCount);
			// 设置总页数:
			int totalPage = 0;
			// Math.ceil(totalCount / limit);
			if (totalCount % limit == 0) {
				totalPage = totalCount / limit;
			} else {
				totalPage = totalCount / limit + 1;
			}
			pageBean.setTotalPage(totalPage);
			// 每页显示的数据集合:
			// 从哪开始:
			int begin = (page - 1) * limit;
			pageBean.setBegin(begin);
			List<Type> list = typeMapper.searchName(pageBean);
			pageBean.setList(list);
		}
		return pageBean;
	}

	@Override
	/**
	 * 查询总数根据关键字
	 * */
	public int findCountSearch(PageBeanUtil pageBean) throws Exception {
		int count=typeMapper.findCountSearch(pageBean);
		return count;
	}

}
