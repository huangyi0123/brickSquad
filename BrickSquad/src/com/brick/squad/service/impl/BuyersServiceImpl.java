package com.brick.squad.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.mapper.BuyersMapper;
import com.brick.squad.pojo.Buyers;
import com.brick.squad.service.BuyersService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Util;

public class BuyersServiceImpl implements BuyersService {
	@Autowired
	@Qualifier("buyersMapper")
	private BuyersMapper buyersMapper;
	@Override
	public void insertBuyers(Buyers buyers) throws Exception {
		// TODO Auto-generated method stub
		buyersMapper.insertBuyers(buyers);
	}
	@Override
	public List<Buyers> findBuyersByUUID(String id) throws Exception {
		// TODO Auto-generated method stub
		return buyersMapper.findBuyersByUUID(id);
	}
	@Override
	public void updateBuyersById(Buyers buyers) throws Exception {
		// TODO Auto-generated method stub
		buyersMapper.updateBuyersById(buyers);
	}
	@Override
	public void deleteBuyersById(String id) throws Exception {
		// TODO Auto-generated method stub
		buyersMapper.deleteBuyersById(id);
	}
	@Override
	public String buyersPagination(Pagination pagination)
			throws Exception {
		// TODO Auto-generated method stub
		List<Buyers> buyers =new ArrayList<Buyers>();
		Util<Buyers> util = new Util<Buyers>();
		buyers = buyersMapper.buyersPagination(pagination);
		int row = buyersMapper.findBuyersAllCount();
		String data = util.SplitPage(buyers, row);
		return data;
	}
	@Override
	public int findBuyersAllCount() throws Exception {
		// TODO Auto-generated method stub
		return buyersMapper.findBuyersAllCount();
	}

}
