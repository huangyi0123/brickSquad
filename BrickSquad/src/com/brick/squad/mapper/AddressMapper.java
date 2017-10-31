package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.pojo.Address;
import com.brick.squad.util.Pagination;

public interface AddressMapper {
	public void insertAddress(Address address) throws Exception;
	public Address findAddressById(String id) throws Exception;
	public void deleteAddressById(String id ) throws Exception;
	public void updateAddressById(Address address) throws Exception;
	public List<Address> addressPagination(Pagination pagination) throws Exception;
	public int findAddressAllCount(Pagination pagination) throws Exception;
}
