package com.brick.squad.service;

import com.brick.squad.pojo.Address;

public interface AddressService {
	public void insertAddress(Address address) throws Exception;
	public Address findAddressById(String id) throws Exception;
}
