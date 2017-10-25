package com.brick.squad.service.impl;

import java.util.ArrayList;
import java.util.List;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.mapper.AddressMapper;
import com.brick.squad.mapper.BuyersMapper;
import com.brick.squad.mapper.RegionMapper;
import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.Buyers;
import com.brick.squad.service.BuyersService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;
import com.brick.squad.util.Util;

public class BuyersServiceImpl implements BuyersService {
	@Autowired
	@Qualifier("buyersMapper")
	private BuyersMapper buyersMapper;
	@Autowired
	@Qualifier("regionMapper")
	private RegionMapper regionMapper;
	@Autowired
	@Qualifier("addressMapper")
	private AddressMapper addressMapper;
	/**
	 * 将address的id获取到buyers对象中
	 */
	
	@Override
	public void insertBuyers(Address address,Buyers buyers) throws Exception {
		// TODO Auto-generated method stub
		addressMapper.insertAddress(address);
		buyers.setDeliveryAddressId(address.getId());
		buyersMapper.insertBuyers(buyers);
	}
	@Override
	public Buyers findBuyersByUUID(String id) throws Exception {
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
	@Override
	public Address findAddressById(String id) throws Exception {
		// TODO Auto-generated method stub
		return addressMapper.findAddressById(id);
	}
	@Override
	public String findRegionsByLevel() {
		List<Select> selects=regionMapper.findRegionsByLevel(1);
		JSONArray jsonArray=JSONArray.fromObject(selects);
		String data=jsonArray.toString();
		return data;
	}

}
