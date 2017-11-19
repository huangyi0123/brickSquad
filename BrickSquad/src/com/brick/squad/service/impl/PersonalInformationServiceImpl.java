package com.brick.squad.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.expand.AddressAndPersonaInformationExpand;
import com.brick.squad.expand.PersonalInfofmationAndHealthRecordsExpand;
import com.brick.squad.mapper.ActivityRegistrationMapper;
import com.brick.squad.mapper.AddressMapper;
import com.brick.squad.mapper.BuyersMapper;
import com.brick.squad.mapper.CollectionMapper;
import com.brick.squad.mapper.GuidanceMapper;
import com.brick.squad.mapper.HealthRecordsMapper;
import com.brick.squad.mapper.MedicalMapper;
import com.brick.squad.mapper.MemberShipApplicationMapper;
import com.brick.squad.mapper.PersonalInformationMapper;
import com.brick.squad.mapper.RapportMapper;
import com.brick.squad.mapper.RegionMapper;
import com.brick.squad.mapper.RelativesMapper;
import com.brick.squad.mapper.ShopActivitiesMapper;
import com.brick.squad.mapper.ShoppingCarMapper;
import com.brick.squad.mapper.TypeMapper;
import com.brick.squad.mapper.UserMapper;
import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.pojo.Relatives;
import com.brick.squad.pojo.Type;
import com.brick.squad.service.GuidanceService;
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
	/**
	 * 根据person表的id删除其余11张表的全部信息
	 */
	@Autowired
	@Qualifier("guidanceMapper")
	private GuidanceMapper guidanceMapper;
	@Autowired
	@Qualifier("healthRecordsMapper")
	private HealthRecordsMapper healthRecordsMapper;
	@Autowired
	@Qualifier("rapportMapper")
	private RapportMapper rapportMapper;
	@Autowired
	@Qualifier("activityRegistrationMapper")
	private ActivityRegistrationMapper activityRegistrationMapper;
	@Autowired
	@Qualifier("medicalMapper")
	private MedicalMapper medicalMapper;
	@Autowired
	@Qualifier("shoppingCarMapper")
	private ShoppingCarMapper shoppingCarMapper;
	@Autowired
	@Qualifier("memberShipApplicationMapper")
	private MemberShipApplicationMapper memberShipApplicationMapper;
	@Autowired
	@Qualifier("userMapper")
	private UserMapper userMapper;
	@Autowired
	@Qualifier("relativesMapper")
	private RelativesMapper relativesMapper;
	@Autowired
	@Qualifier("collectionMapper")
	private CollectionMapper collectionMapper;
	@Autowired
	@Qualifier("buyersMapper")
	private BuyersMapper buyersMapper;

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
			AddressAndPersonaInformationExpand addressAndPersonaInformationExpand)
			throws Exception {
		PersonalInformation personalInformation = addressAndPersonaInformationExpand
				.getPersonalInformation();
		// 先修改地址,如果addressID为空，先插入
		if (addressAndPersonaInformationExpand.getAddress().getId() == ""
				|| addressAndPersonaInformationExpand.getAddress().getId() == null) {
			Address address = addressAndPersonaInformationExpand.getAddress();
			addressMapper.insertAddress(address);
			personalInformation.setAddressId(address.getId());

		} else {
			personalInformation.setAddressId(addressAndPersonaInformationExpand
					.getAddress().getId());
			addressMapper.updateAddressById(addressAndPersonaInformationExpand
					.getAddress());
		}

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
				// 删除信息表记录以后再删除其余表的数据
				guidanceMapper.deleteByIdGuidance(personalInformation.getId());
				healthRecordsMapper.deleteByPerIdHealth(personalInformation
						.getId());
				rapportMapper.deleteByPerIdRapport(personalInformation.getId());
				activityRegistrationMapper
						.deleteByPerIdActivityRegistration(personalInformation
								.getId());
				medicalMapper.deleteMedicalByPerId(personalInformation.getId());
				shoppingCarMapper.deleteShoppingCarByPerId(personalInformation
						.getId());
				memberShipApplicationMapper
						.deleteMemberShipApplicationByPerId(personalInformation
								.getId());
				userMapper.deleteUser(personalInformation.getId());
				relativesMapper.deleteRelativesByPerId(personalInformation
						.getId());
				collectionMapper.deleteCollectionByPerId(personalInformation
						.getId());
				buyersMapper.deleteBuyersById(personalInformation.getId());
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

	@Override
	public PersonalInformation findThereAllById(String id) {
		PersonalInformation PersonalInformation = personalInformationMapper
				.findThereAllById(id);
		return PersonalInformation;
	}

	@Override
	public String updaeInforMation(
			AddressAndPersonaInformationExpand addressAndPersonaInformationExpand) {
		PersonalInformation pInformation = addressAndPersonaInformationExpand
				.getPersonalInformation();
		Address address = addressAndPersonaInformationExpand.getAddress();
		Relatives relatives = addressAndPersonaInformationExpand.getRelatives();
		// 根据id将原始老人信息查询
		PersonalInformation personalInformation = personalInformationMapper
				.findPersonalInformationById(pInformation.getId());
		personalInformation.setName(pInformation.getName());
		personalInformation.setGender(pInformation.getGender());
		personalInformation.setBirthday(pInformation.getBirthday());
		Address address2;
		if (personalInformation.getAddressId() != null
				&& !personalInformation.getAddressId().equals("")) {
			address2 = addressMapper.findAddressById(personalInformation
					.getAddressId());
			System.out.println(address2);
		} else {
			address2 = new Address();
		}
		address2.setProvinceId(address.getProvinceId());
		address2.setCityId(address.getCityId());
		address2.setCountryId(address.getCountryId());
		address2.setCountyId(address.getCountyId());
		address2.setDetailed(address.getDetailed());
		if (personalInformation.getAddressId() != null
				&& !personalInformation.getAddressId().equals("")) {
			addressMapper.updateAddressById(address2);
			
		} else {
			addressMapper.insertAddress(address2);
			personalInformation.setAddressId(address2.getId());
		}
		personalInformationMapper
				.updatePersonalInformationById(personalInformation);
		Relatives relatives2;
		if (relatives.getId() != null && !relatives.getId().equals("")) {
			relatives2 = relativesMapper.findRelativesById(relatives.getId());
		} else {
			relatives2 = new Relatives();
		}
		relatives2.setName(relatives.getName());
		relatives2.setPerId(personalInformation.getId());
		relatives2.setRelationshipId(relatives.getRelationshipId());
		relatives2.setTelephone(relatives.getTelephone());
		if (relatives.getId() != null && !relatives.getId().equals("")) {
			relativesMapper.updateRelativesById(relatives2);
		} else {
			relativesMapper.insertRelatives(relatives2);
		}
		Map<String, String> map = new HashMap<String, String>();
		map.put("addressId", address2.getId());
		String addresse=addressMapper.findByIdAllAddress(address2.getId());
		map.put("address", addresse);
		Type type=typeMapper.findTypeById(relatives2.getRelationshipId());
		map.put("relativesName", type.getName());
		map.put("relativesId", relatives2.getId());
		JSONArray jsonArray = JSONArray.fromObject(map);
		return jsonArray.toString();
	}
}
