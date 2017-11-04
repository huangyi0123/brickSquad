package com.brick.squad.mapper;

import java.util.List;


import com.brick.squad.pojo.Address;
import com.brick.squad.util.Pagination;
public interface AddressMapper {
	public void insertAddress(Address address) ;
	public Address findAddressById(String id) ;
	public void deleteAddressById(String id ) ;
	public void updateAddressById(Address address);
	public List<Address> addressPagination(Pagination pagination);
	public int findAddressAllCount(Pagination pagination) ;
	//根据id查询出所有地址 拼接地址
	public String findByIdAllAddress(String id);
}