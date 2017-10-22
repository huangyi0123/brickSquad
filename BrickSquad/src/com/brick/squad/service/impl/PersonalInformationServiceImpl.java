package com.brick.squad.service.impl;

import java.util.List;

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
import com.brick.squad.service.PersonalInformationService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;
import com.brick.squad.util.Util;
@Transactional
public class PersonalInformationServiceImpl implements PersonalInformationService {
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
		List<Select> selects=regionMapper.findRegionsByLevel(1);
		JSONArray jsonArray=JSONArray.fromObject(selects);
		String data=jsonArray.toString();
		return data;
	}
	@Override
	public PersonalInformation findPersonalInformationById(String id) {
		
		return personalInformationMapper.findPersonalInformationById(id);
	}

	@Override
	public void insertPersonalInformation(Address address, PersonalInformation personalInformation) {
		try {
			addressMapper.insertAddress(address);
			personalInformation.setAddressId(address.getId());
			personalInformationMapper.insertPersonalInformation(personalInformation);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

	@Override
	public void updatePersonalInformationById(PersonalInformation personalInformation) {
		personalInformationMapper.updatePersonalInformationById(personalInformation);
		
	}

	@Override
	public void deletePersonalInformationById(String id) {
		personalInformationMapper.deletePersonalInformationById(id);
		
	}

	@Override
	public String personalInformationPagination(
			Pagination pagination) {
		List<PersonalInformation> datas=personalInformationMapper.personalInformationPagination(pagination);
		int n=personalInformationMapper.personalInformationCount();
		Util<PersonalInformation> util =new Util<PersonalInformation>();
		String data=util.SplitPage(datas, n);
		return data;
	}
	@Override
	/**
	 * 查询老人所有信息，需求字段
	 * */
	public String findAllPersonalInformation() {
		List<Select> personalInformation=personalInformationMapper.findAllPersonalInformation();
		JSONArray jsonArray = new JSONArray();
		String dataTytes =jsonArray.fromObject(personalInformation).toString();
		return dataTytes;
	}
	@Override
	/**
	 * 查询老人所有信息,所有字段
	 * */
	public String findAllPersonalInformations() {
		List<PersonalInformation> personalInformation=personalInformationMapper.findAllPersonalInformations();
		JSONArray jsonArray = new JSONArray();
		String dataTytes =jsonArray.fromObject(personalInformation).toString();
		return dataTytes;
	}
	@Override
	public String findTypesByParentId() {
		List<Select> selects = typeMapper.findTypeByParentId("mz");
		JSONArray jsonArray = new JSONArray();
		String dataTytes =jsonArray.fromObject(selects).toString();
		return dataTytes;
	}
	@Override
	public String findAddressById(String id) {
		String addressesdata = null;
		try {
			Address addresses = addressMapper.findAddressById(id);
			JSONObject jsonObject = new JSONObject();
			 addressesdata =jsonObject.fromObject(addresses).toString();
			return addressesdata;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return addressesdata;
		
	}

}
