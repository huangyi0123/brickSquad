package com.brick.squad.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.expand.RelativesAndAddressExpand;
import com.brick.squad.mapper.AddressMapper;
import com.brick.squad.mapper.RelativesMapper;
import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.Relatives;
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
	@Override
	public Relatives findRelativesById(String id) {
		return relativesMapper.findRelativesById(id);
	}

	@Override
	public void insertRelatives(Relatives relatives) {
		relativesMapper.insertRelatives(relatives);

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
		Util<Relatives> util = new Util<>();
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

}
