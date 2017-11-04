package com.brick.squad.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.expand.RelativesAndAddressAndTypeAndPersonExpand;
import com.brick.squad.expand.RelativesAndAddressExpand;
import com.brick.squad.mapper.AddressMapper;
import com.brick.squad.mapper.PersonalInformationMapper;
import com.brick.squad.mapper.RelativesMapper;
import com.brick.squad.mapper.TypeMapper;
import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.pojo.Relatives;
import com.brick.squad.pojo.Type;
import com.brick.squad.service.RelativesService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Util;

@Transactional
public class RelativesServiceImpl implements RelativesService {
	@Autowired
	@Qualifier("relativesMapper")
	private RelativesMapper relativesMapper;
	@Autowired
	@Qualifier("addressMapper")
	private AddressMapper addressMapper;
	@Autowired
	@Qualifier("typeMapper")
	private TypeMapper typeMapper;
	@Autowired
	@Qualifier("personalInformationMapper")
	private PersonalInformationMapper personalInformationMapper;
	@Override
	public Relatives findRelativesById(String id) {
		return relativesMapper.findRelativesById(id);
	}

	@Override
	public void insertRelatives(RelativesAndAddressAndTypeAndPersonExpand relativesAndAddressAndTypeAndPersonExpand) {
		/*//获取拓展类中的Address类执行插入方法
		addressMapper.insertAddress(relativesAndAddressAndTypeAndPersonExpand.getAddress());
		//将拓展类中的Relatives类中的外键id设置成新插入的address的主键
		relativesAndAddressAndTypeAndPersonExpand.getRelatives().setAddressId(relativesAndAddressAndTypeAndPersonExpand.getAddress().getId());;
		//最后将拓展类中的Relatives类执行方法
		relativesMapper.insertRelatives(relativesAndAddressAndTypeAndPersonExpand.getRelatives());*/
		Address address=relativesAndAddressAndTypeAndPersonExpand.getAddress();
		addressMapper.insertAddress(address);
		String addressId = relativesAndAddressAndTypeAndPersonExpand.getAddress().getId();
		relativesAndAddressAndTypeAndPersonExpand.getRelatives().setAddressId(addressId);
		relativesMapper.insertRelatives(relativesAndAddressAndTypeAndPersonExpand.getRelatives());
	}

	@Override
	public void updateRelativesById(Relatives relatives) {
		relativesMapper.updateRelativesById(relatives);

	}

	@Override
	public void deleteRelativesById(String id) {
		relativesMapper.deleteRelativesById(id);

	}

	/**
	 * 分页查询
	 */
	@Override
	public String relativesPagination(Pagination pagination) {
		List<Relatives> relatives = relativesMapper .relativesPagination(pagination);
		int row = relativesMapper.findRelativesAllCount(pagination);
		Util<Relatives> util = new Util<Relatives>();
		String data = util.SplitPage(relatives, row);
		return data;
	}

	@Override
	public void userUpdateRelatives(
			RelativesAndAddressExpand relativesAndAddressExpand) throws Exception {
		
		Address address =relativesAndAddressExpand.getAddress();
		Relatives relatives =relativesAndAddressExpand.getRelatives();
		if (address.getId().equals("")||address.getId()==null) {
			//如果没有插入地址过，那就先插入address
			addressMapper.insertAddress(address);
			//地址插入成功后返回的ID存入relatives
			relatives.setAddressId(address.getId());
		}else{
			//有地址，则直接根据ID修改
			addressMapper.updateAddressById(address);
		}
		if (relatives.getId().equals("")||relatives.getId()==null) {
			//如果relativeID为空，则执行插入操作
			relativesMapper.insertRelatives(relatives);
		}else {
			//如果 relativeID不为空，则执行修改操作
			relativesMapper.updateRelativesById(relatives);
		}
		
	}

	@Override
	public Relatives selectRelativesByPerId(String PerId) {
		
		return relativesMapper.selectRelativesByPerId(PerId);
	}

	@Override
	public void updateRelativesByIdExend(
			RelativesAndAddressAndTypeAndPersonExpand relativesAndAddressAndTypeAndPersonExpand) {
		//获取拓展类中的Address对象执行AddressService中的修改方法
		Address addressupdate = relativesAndAddressAndTypeAndPersonExpand.getAddress();
		//Address对象执行AddressService中的修改方法
		addressMapper.updateAddressById(addressupdate);
		//执行完修改之后将修改完的id设置到relatives中
		relativesAndAddressAndTypeAndPersonExpand.getRelatives().setAddressId(relativesAndAddressAndTypeAndPersonExpand.getAddress().getId());
		//得到Address、type、PersonalInformation的新id后设置到relatives中后执行修改方法
		relativesMapper.updateRelativesById(relativesAndAddressAndTypeAndPersonExpand.getRelatives());
	}

}
