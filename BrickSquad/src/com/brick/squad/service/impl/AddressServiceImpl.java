package com.brick.squad.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.AddressMapper;
import com.brick.squad.pojo.Address;
import com.brick.squad.service.AddressService;

@Transactional
public class AddressServiceImpl implements AddressService{
	@Autowired
	@Qualifier("addressMapper")
	private AddressMapper addressMapper;

	@Override
	public void insertAddress(Address address) throws Exception {
		addressMapper.insertAddress(address);
		
	}
	

}
