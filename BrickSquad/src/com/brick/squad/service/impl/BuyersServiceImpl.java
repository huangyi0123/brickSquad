package com.brick.squad.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.expand.AddressAndBuyersExpand;
import com.brick.squad.mapper.AddressMapper;
import com.brick.squad.mapper.BuyersMapper;
import com.brick.squad.mapper.CollectionMapper;
import com.brick.squad.mapper.PersonalInformationMapper;
import com.brick.squad.mapper.RegionMapper;
import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.Buyers;
import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.service.BuyersService;
import com.brick.squad.util.Common;
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
	@Autowired
	@Qualifier("collectionMapper")
	private CollectionMapper collectionMapper;
	@Autowired
	@Qualifier("personalInformationMapper")
	private PersonalInformationMapper personalInformationMapper;
	/**
	 * 将address的id获取到buyers对象中
	 */

	@Override
	public void insertBuyers(AddressAndBuyersExpand addressAndBuyersExpand)
			throws Exception {
		// TODO Auto-generated method stub
		addressMapper.insertAddress(addressAndBuyersExpand.getAddress());
		addressAndBuyersExpand.getBuyers().setDeliveryAddressId(
				addressAndBuyersExpand.getAddress().getId());
		buyersMapper.insertBuyers(addressAndBuyersExpand.getBuyers());
	}

	@Override
	public Buyers findBuyersByUUID(String id) throws Exception {
		// TODO Auto-generated method stub
		return buyersMapper.findBuyersByUUID(id);
	}

	@Override
	public void updateBuyersById(AddressAndBuyersExpand addressAndBuyersExpand)
			throws Exception {
		// TODO Auto-generated method stub
		addressMapper.updateAddressById(addressAndBuyersExpand.getAddress());
		addressAndBuyersExpand.getBuyers().setDeliveryAddressId(
				addressAndBuyersExpand.getAddress().getId());
		buyersMapper.updateBuyersById(addressAndBuyersExpand.getBuyers());
	}

	@Override
	public void deleteBuyersById(String id) throws Exception {
		// TODO Auto-generated method stub
		// 先查询出buyers表中的数据
		Buyers buyers = buyersMapper.findBuyersByUUID(id);
		if (buyers.getDeliveryAddressId() != null) {
			addressMapper.deleteAddressById(buyers.getDeliveryAddressId());
			buyersMapper.deleteBuyersById(id);
		}

		buyersMapper.deleteBuyersById(id);
	}

	@Override
	public String buyersPagination(Pagination pagination) throws Exception {
		// TODO Auto-generated method stub
		List<Buyers> buyers = new ArrayList<Buyers>();
		Util<Buyers> util = new Util<Buyers>();
		buyers = buyersMapper.buyersPagination(pagination);
		int row = buyersMapper.findBuyersAllCount(pagination);
		String data = util.SplitPage(buyers, row);
		return data;
	}

	/*
	 * @Override public int findBuyersAllCount() throws Exception { // TODO
	 * Auto-generated method stub return buyersMapper.findBuyersAllCount(); }
	 */
	@Override
	public Address findAddressById(String id) throws Exception {
		// TODO Auto-generated method stub
		return addressMapper.findAddressById(id);
	}

	@Override
	public String findRegionsByLevel() {
		List<Select> selects = regionMapper.findRegionsByLevel(1);
		JSONArray jsonArray = JSONArray.fromObject(selects);
		String data = jsonArray.toString();
		return data;
	}

	@Override
	public String findPnameByBuyersId() {
		List<Select> Bnames = collectionMapper.findPnameByBuyersId();
		JSONArray jsonArray = new JSONArray();
		String dataBnames = jsonArray.fromObject(Bnames).toString();
		return dataBnames;
	}

	@Override
	public String getBuyGrade(String userId) {
		Map<String, Object> map=new HashMap<String, Object>();
		Buyers buyers=buyersMapper.findBuyersById(userId);
		if (buyers==null) {
			PersonalInformation personalInformation=personalInformationMapper.findPersonalInformationById(userId);
			if (personalInformation.getAddressId()==null) {
				map.put("state", "error");
				map.put("msg", "请完善个人地址");
			}else {
				buyers=new Buyers();
				buyers.setId(userId);
				buyers.setDeliveryAddressId(personalInformation.getAddressId());
				try {
					buyersMapper.insertBuyers(buyers);
					
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}else {
			int grade=buyers.getHistoricalIntegral();
			map.put("Integral", grade);
			map.put("grade", Common.rank(grade));
			map.put("state", "success");
			map.put("data", buyers);
		}
		JSONArray jsonArray=JSONArray.fromObject(map);
		return jsonArray.toString();
	}

	@Override
	public String getBuyAddress(String userId) {
		List<Address> addresses=addressMapper.findAddressByBuyersId(userId);
		for (Address address : addresses) {
			address.setDetailed(addressMapper.findByIdAllAddress(address.getId()));
		}
		JSONArray jsonArray=JSONArray.fromObject(addresses);
		return jsonArray.toString();
	}

	@Override
	public String getBuyAdd(String addressid) {
		Address address=addressMapper.findAddressByAddressId(addressid);
		List<Select> por=regionMapper.findRegionsByLevel(1);
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("address", address);
		map.put("por", por);
		JSONArray jsonArray=JSONArray.fromObject(map);
		return jsonArray.toString();
	}

}
