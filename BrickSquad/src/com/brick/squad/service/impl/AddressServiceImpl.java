package com.brick.squad.service.impl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.json.JsonArray;

import net.sf.json.JSONArray;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.AddressMapper;
import com.brick.squad.mapper.RegionMapper;
import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.Region;
import com.brick.squad.service.AddressService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;
import com.brick.squad.util.Util;

@Transactional
public class AddressServiceImpl implements AddressService{
	@Autowired
	@Qualifier("addressMapper")
	private AddressMapper addressMapper;
	@Autowired
	@Qualifier("regionMapper")
	private RegionMapper regionMapper;

	@Override
	public void insertAddress(Address address) throws Exception {
		addressMapper.insertAddress(address);
		
	}

	@Override
	public Address findAddressById(String id) throws Exception {
		
		return addressMapper.findAddressById(id);
		
	}

	@Override
	public void deleteAddressById(String id) throws Exception {
		// TODO Auto-generated method stub
		addressMapper.deleteAddressById(id);
	}

	@Override
	public void updateAddressById(Address address) throws Exception {
		// TODO Auto-generated method stub
		addressMapper.updateAddressById(address);
	}
/**
 * 分页查询
 */
	@Override
	public String addressPagination(Pagination pagination)
			throws Exception {
		// TODO Auto-generated method stub
		List<Address> list = new ArrayList<Address>();
		Util<Address> util = new Util<Address>();
		list=addressMapper.addressPagination(pagination);
		int row = addressMapper.findAddressAllCount(pagination);
		String data =util.SplitPage(list, row);
		return data;
	}

	/*@Override
	public int findAddressAllCount() throws Exception {
		// TODO Auto-generated method stub
		return addressMapper.findAddressAllCount();
	}*/

	@Override
	public String findRegionsByLevel() {
		List<Select> selects=regionMapper.findRegionsByLevel(1);
		JSONArray jsonArray=JSONArray.fromObject(selects);
		String data=jsonArray.toString();
		return data;
	}

	@Override
	public String findRegionsByParentId(String parentId) {
		List<Select> selects=regionMapper.findRegionsByParentId(parentId);
		JSONArray jsonArray=JSONArray.fromObject(selects);
		return jsonArray.toString();
	}

	@Override
	public String getAllRegion(Address address) {
		List<Select> city=regionMapper.findRegionsByParentId(address.getProvinceId());
		List<Select> county=regionMapper.findRegionsByParentId(address.getCityId());
		List<Select> country=regionMapper.findRegionsByParentId(address.getCountyId());
		Map<String, List<Select>> map=new HashMap<String, List<Select>>();
		map.put("city", city);
		map.put("county", county);
		map.put("country", country);
		JSONArray jsonArray=JSONArray.fromObject(map);
		return jsonArray.toString();
	}


	

}
