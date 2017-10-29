package com.brick.squad.service.impl;

import java.util.List;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.expand.AddressAndPersonaInformationExpand;
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

/**
 * 
 * @author 吴文鑫
 * 
 */
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
	public void insertPersonalInformation(
			AddressAndPersonaInformationExpand addressAndPersonaInformationExpand) {
		try {
			// 先插入地址，mybatis插入语句已配置插入成功返回主键Id(uuid)
			addressMapper.insertAddress(addressAndPersonaInformationExpand
					.getAddress());
			// 根据插入地址返回ID存在信息记录中，再存入数据库
			addressAndPersonaInformationExpand.getPersonalInformation()
					.setAddressId(
							addressAndPersonaInformationExpand.getAddress()
									.getId());
			personalInformationMapper
					.insertPersonalInformation(addressAndPersonaInformationExpand
							.getPersonalInformation());
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
		// 先根据ID查询表，返回这条记录，用来删除地址表中的记录
		PersonalInformation personalInformation = personalInformationMapper
				.findPersonalInformationById(id);
		if (personalInformation.getAddressId() != null) {
			try {
				// 根据信息表中要删除的数据存的地址ID删除地址
				addressMapper.deleteAddressById(personalInformation
						.getAddressId());
				// 地址删除成功后，再删除信息表的记录
				personalInformationMapper.deletePersonalInformationById(id);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	@Override
	public String personalInformationPagination(Pagination pagination) {

		List<PersonalInformation> datas = personalInformationMapper
				.personalInformationPagination(pagination);
		int n = personalInformationMapper.personalInformationCount(pagination);
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

}
