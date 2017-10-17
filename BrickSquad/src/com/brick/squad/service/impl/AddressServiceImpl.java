package com.brick.squad.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.AddressMapper;
import com.brick.squad.pojo.Address;
import com.brick.squad.service.AddressService;
import com.brick.squad.util.Pagination;

@Transactional
public class AddressServiceImpl implements AddressService{
	@Autowired
	@Qualifier("addressMapper")
	private AddressMapper addressMapper;

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

	@Override
	public List<Address> addressPagination(Pagination pagination)
			throws Exception {
		// TODO Auto-generated method stub
		return addressMapper.addressPagination(pagination);
	}


	

}
