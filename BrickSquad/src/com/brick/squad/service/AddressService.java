package com.brick.squad.service;

import java.util.List;

import com.brick.squad.pojo.Address;
import com.brick.squad.util.Pagination;

public interface AddressService {
	public void insertAddress(Address address) throws Exception;
	public Address findAddressById(String id) throws Exception;
	public void deleteAddressById(String id ) throws Exception;
	public void updateAddressById(Address address) throws Exception;
	
	public int findAddressAllCount() throws Exception;
	/**
	 * 分页查询
	 * @param pagination
	 * @return
	 * @throws Exception
	 */
	public String addressPagination(Pagination pagination) throws Exception;
}
