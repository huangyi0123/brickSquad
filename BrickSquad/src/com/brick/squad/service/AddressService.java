package com.brick.squad.service;

import com.brick.squad.pojo.Address;

public interface AddressService {
	public void insertAddress(Address address) throws Exception;
	public Address findAddressById(String id) throws Exception;
	public void deleteAddressById(String id ) throws Exception;
	public void updateAddressById(Address address) throws Exception;
}
