package com.brick.squad.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.expand.RelativesAndAddressAndTypeAndPersonExpand;
import com.brick.squad.expand.RelativesAndAddressAndTypeExpand;
import com.brick.squad.mapper.AddressMapper;
import com.brick.squad.mapper.PersonalInformationMapper;
import com.brick.squad.mapper.RelativesMapper;
import com.brick.squad.mapper.TypeMapper;
import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.Relatives;
import com.brick.squad.pojo.Type;
import com.brick.squad.service.AddressService;
import com.brick.squad.service.RelativesService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Util;

@Transactional
public class RelativesServiceImpl implements RelativesService {
	@Autowired
	@Qualifier("addressService")
	private AddressService addressService;
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
	public void insertRelatives(
			RelativesAndAddressAndTypeAndPersonExpand relativesAndAddressAndTypeAndPersonExpand) {
		  //获取拓展类中的Address类执行插入方法
		  addressMapper.insertAddress(relativesAndAddressAndTypeAndPersonExpand
		  .getAddress()); //将拓展类中的Relatives类中的外键id设置成新插入的address的主键
		  relativesAndAddressAndTypeAndPersonExpand
		 .getRelatives().setAddressId(
		  relativesAndAddressAndTypeAndPersonExpand.getAddress().getId());;
		  //最后将拓展类中的Relatives类执行方法
		  relativesMapper.insertRelatives(relativesAndAddressAndTypeAndPersonExpand
		  .getRelatives());
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



/*	@Override
	public void userUpdateRelatives(
			RelativesAndAddressAndTypeExpand relativesAndAddressAndTypeExpand)
			throws Exception {

		Address address = relativesAndAddressAndTypeExpand.getAddress();
		Relatives relatives = relativesAndAddressAndTypeExpand.getRelatives();
		if (address.getId().equals("") || address.getId() == null) {
			// 如果没有插入地址过，那就先插入address
			addressMapper.insertAddress(address);
			// 地址插入成功后返回的ID存入relatives
			relatives.setAddressId(address.getId());
		} else {
			// 有地址，则直接根据ID修改
			addressMapper.updateAddressById(address);
		}
		if (relatives.getId().equals("") || relatives.getId() == null) {
			// 如果relativeID为空，则执行插入操作
			relativesMapper.insertRelatives(relatives);
		} else {
			// 如果 relativeID不为空，则执行修改操作
			relativesMapper.updateRelativesById(relatives);
		}

	}*/

	@Override
	public List<Relatives> selectRelativesByPerId(String PerId) {

		return relativesMapper.selectRelativesByPerId(PerId);
	}

	@Override
	public void updateRelativesByIdExend(
			RelativesAndAddressAndTypeAndPersonExpand relativesAndAddressAndTypeAndPersonExpand) {
		// 获取拓展类中的Address对象执行AddressService中的修改方法
		Address addressupdate = relativesAndAddressAndTypeAndPersonExpand
				.getAddress();
		// Address对象执行AddressService中的修改方法
		addressMapper.updateAddressById(addressupdate);
		// 执行完修改之后将修改完的id设置到relatives中
		relativesAndAddressAndTypeAndPersonExpand.getRelatives().setAddressId(
				relativesAndAddressAndTypeAndPersonExpand.getAddress().getId());
		// 得到Address、type、PersonalInformation的新id后设置到relatives中后执行修改方法
		relativesMapper
				.updateRelativesById(relativesAndAddressAndTypeAndPersonExpand
						.getRelatives());
	}

	/**
	 * 普通用户删除亲属联系人，要把与之关联的地址也删掉
	 * @param id
	 */
	@Override
	public void userDeleteRelativesById(String id) {
		//先查询
		Relatives relatives =relativesMapper.findRelativesById(id);
		if (relatives!=null) {
			if (relatives.getAddressId()!=null) {
				//先查询
				Address address =addressMapper.findAddressById(relatives.getAddressId());
				if (address!=null) {
					//再删除
					addressMapper.deleteAddressById(address.getId());
				}
				//再删除
				relativesMapper.deleteRelativesById(relatives.getId());
			}else {
				//没有地址情况下，再删除
				relativesMapper.deleteRelativesById(relatives.getId());
			}
			
		}
		
	}
	@Override
	public String usergetrelativesPagination(String id) throws Exception {
		//取得亲属联系人集合开始
		//实例化扩展类集合，大集合
		List<RelativesAndAddressAndTypeExpand> relativesAndAddressAndTypeExpandsList = new ArrayList<RelativesAndAddressAndTypeExpand>();
		//先根据老人ID查询亲属关系表 得到亲属信息集合
		List<Relatives> relativesList = relativesMapper.selectRelativesByPerId(id);
	
		
		//如果集合不为空,循环亲属信息集合
		if (relativesList!=null) {
			for (Relatives relatives : relativesList) {
				//实例化扩展类，扩展类setaddress、relatives、type
				RelativesAndAddressAndTypeExpand relativesAndAddressAndTypeExpand =new RelativesAndAddressAndTypeExpand();
				//将亲属信息存在扩展类中
				relativesAndAddressAndTypeExpand.setRelativesPeopleName(relatives.getName());
				relativesAndAddressAndTypeExpand.setRelativesTelephone(relatives.getTelephone());
				relativesAndAddressAndTypeExpand.setRelatives(relatives);
				relativesAndAddressAndTypeExpand.setRelativesId(relatives.getId());
			//如果亲属的地址ID不为空 
				if (relatives.getAddressId()!=null) {
					//取得亲属的地址ID
					String addressId =relatives.getAddressId();
				Address address  =addressMapper.findAddressById(addressId);
				if (address!=null) {
					//如果查出来地址不为空，将地址信息存在扩展类中
					relativesAndAddressAndTypeExpand.setAddress(address);
					//调用addressServer的方法，在addresssever中写封装地址的方法，参数为address对象，返回类型为字符串
					String addressNameString =addressService.getAddressStringByAddress(address);
					//把处理好的地址字符串放在封装类
					relativesAndAddressAndTypeExpand.setRelativesPeopleAddressName(addressNameString);
				}
				
			}
				if (relatives.getRelationshipId()!=null) {
					//如果亲属关系类型ID不为空
					String relationshipId =relatives.getRelationshipId();
					Type type = typeMapper.findTypeById(relationshipId);
					if (type!=null) {
						String relationshipName = type.getName();
						//把查询来的type对象放在封装类
						relativesAndAddressAndTypeExpand.setType(type);
						//把处理好的亲属关系类型名存入封装类
						relativesAndAddressAndTypeExpand.setRelativesName(relationshipName);
					}
					
				}
				//将处理好的亲属地址类型扩展类对象存在集合中
				relativesAndAddressAndTypeExpandsList.add(relativesAndAddressAndTypeExpand);
			}
			
			
		}
		//取得亲属联系人集合结束
		int row=relativesAndAddressAndTypeExpandsList.size();
		Util<RelativesAndAddressAndTypeExpand> util = new Util<>();
		String data = util.SplitPage(relativesAndAddressAndTypeExpandsList, row);
		return data;
	}

}
