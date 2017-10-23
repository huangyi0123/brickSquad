package com.brick.squad.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.AddressMapper;
import com.brick.squad.mapper.PersonalInformationMapper;
import com.brick.squad.mapper.RegionMapper;
import com.brick.squad.mapper.TypeMapper;
import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.pojo.Region;
import com.brick.squad.service.PersonalInformationService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;
import com.brick.squad.util.Util;

@Transactional
public class PersonalInformationServiceImpl implements
		PersonalInformationService {
	@Autowired
	@Qualifier("personalInformationMapper")
	private PersonalInformationMapper personalInformationMapper;
	@Autowired
	@Qualifier("regionMapper")
	private RegionMapper regionMapper;
	@Autowired
	@Qualifier("typeMapper")
	private TypeMapper typeMapper;
	@Autowired
	@Qualifier("addressMapper")
	private AddressMapper addressMapper;

	@Override
	public String findRegionsByLevel() {
		List<Select> selects = regionMapper.findRegionsByLevel(1);
		JSONArray jsonArray = JSONArray.fromObject(selects);
		String data = jsonArray.toString();
		return data;
	}

	@Override
	public PersonalInformation findPersonalInformationById(String id) {

		return personalInformationMapper.findPersonalInformationById(id);
	}

	@Override
	public void insertPersonalInformation(Address address,
			PersonalInformation personalInformation) {
		try {
			addressMapper.insertAddress(address);
			personalInformation.setAddressId(address.getId());
			personalInformationMapper
					.insertPersonalInformation(personalInformation);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Override
	public void updatePersonalInformationById(
			PersonalInformation personalInformation) {
		personalInformationMapper
				.updatePersonalInformationById(personalInformation);

	}

	@Override
	public void deletePersonalInformationById(String id) {
		personalInformationMapper.deletePersonalInformationById(id);

	}

	@Override
	public String personalInformationPagination(Pagination pagination) {
		List<PersonalInformation> datas = personalInformationMapper
				.personalInformationPagination(pagination);
		int n = personalInformationMapper.personalInformationCount();
		Util<PersonalInformation> util = new Util<PersonalInformation>();
		String data = util.SplitPage(datas, n);
		return data;
	}

	@Override
	/**
	 * 查询老人所有信息，需求字段
	 * */
	public String findAllPersonalInformation() {
		List<Select> personalInformation = personalInformationMapper
				.findAllPersonalInformation();
		JSONArray jsonArray = new JSONArray();
		String dataTytes = jsonArray.fromObject(personalInformation).toString();
		return dataTytes;
	}

	@Override
	/**
	 * 查询老人所有信息,所有字段
	 * */
	public String findAllPersonalInformations() {
		List<PersonalInformation> personalInformation = personalInformationMapper
				.findAllPersonalInformations();
		JSONArray jsonArray = new JSONArray();
		String dataTytes = jsonArray.fromObject(personalInformation).toString();
		return dataTytes;
	}

	@Override
	public String findTypesByParentId() {
		List<Select> selects = typeMapper.findTypeByParentId("mz");
		JSONArray jsonArray = new JSONArray();
		String dataTytes = jsonArray.fromObject(selects).toString();
		return dataTytes;
	}

	@Override
	public Address findAddressById(String id) throws Exception {

		return addressMapper.findAddressById(id);

	}


	/**
	 * 根据ID查询地址，将地址转为JSON对象字符串，页面上回显地址用
	 */
@Override
public String getAllRegionById(Address address) {
	Region city=regionMapper.findRegionById(address.getCityId());
	Region county  = regionMapper.findRegionById(address.getCountyId());
	Region country =regionMapper.findRegionById(address.getCountryId());
	Map<String, Region> map = new HashMap<String, Region>();
	map.put("city", city);
	map.put("county", county);
	map.put("country", country);
	JSONArray jsonArray = new JSONArray();
	String allRegion = jsonArray.fromObject(map).toString();
	return allRegion;
}



}
