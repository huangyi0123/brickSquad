package com.brick.squad.mapper;

import com.brick.squad.pojo.Address;

public interface AddressMapper {
	public void insertAddress(Address address) throws Exception;
	public Address findAddressById(String id) throws Exception;
	public void deleteAddressById(String id ) throws Exception;
	public void updateAddressById(Address address) throws Exception;
}
