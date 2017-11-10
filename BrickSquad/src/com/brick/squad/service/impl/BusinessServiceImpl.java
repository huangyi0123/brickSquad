package com.brick.squad.service.impl;

import java.util.List;

import javax.swing.Spring;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.BusinessMapper;
import com.brick.squad.pojo.ActivityRegistration;
import com.brick.squad.pojo.Business;
import com.brick.squad.pojo.Type;
import com.brick.squad.service.BusinessService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;
import com.brick.squad.util.Util;

@Transactional
public class BusinessServiceImpl implements BusinessService {

	@Autowired
	@Qualifier("businessMapper")
	private BusinessMapper businessMapper;

	@Override
	public Business findBusinessById(String id) {
		return businessMapper.findBusinessById(id);
	}

	@Override
	public void insertBusiness(Business business) {
		businessMapper.insertBusiness(business);

	}

	@Override
	public void updateBusinessById(Business business) {
		businessMapper.updateBusinessById(business);

	}

	@Override
	public void deleteBusinessById(String id) {
		businessMapper.deleteBusinessById(id);

	}

	@Override
	public String businessPagination(Pagination pagination) {
		List<Business> datas = businessMapper.businessPagination(pagination);
		int n = businessMapper.businessCount(pagination);
		Util<Business> util = new Util<Business>();
		String data = util.SplitPage(datas, n);
		return data;
	}

	@Override
	public String findAllBusiness() {
		List<Select> business = businessMapper.findAllBusiness();
		JSONArray jsonArray = new JSONArray();
		String string = jsonArray.fromObject(business).toString();
		return string;
	}

	@Override
	public Business findBusiness(String id) {
		Business business = businessMapper.findBusiness(id);
		return business;
	}

}
