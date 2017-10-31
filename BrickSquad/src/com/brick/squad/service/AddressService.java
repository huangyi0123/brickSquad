package com.brick.squad.service;

import java.util.List;

import com.brick.squad.pojo.Address;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;

public interface AddressService {
	public void insertAddress(Address address) throws Exception;
	public Address findAddressById(String id) throws Exception;
	public void deleteAddressById(String id ) throws Exception;
	public void updateAddressById(Address address) throws Exception;
	
	//public int findAddressAllCount() throws Exception;
	/**
	 * 分页查询
	 * @param pagination
	 * @return
	 * @throws Exception
	 */
	public String addressPagination(Pagination pagination) throws Exception;
	/**
	 * 查询省级区域
	 * @return 省级区域及idjson字符串
	 */
	public String findRegionsByLevel();
	/**
	 * 根据父id查询区域
	 * @param parentId父id
	 * @return 区域
	 */
	public String findRegionsByParentId(String parentId);
	/**
	 * 根据地址信息查询相关区域
	 * @param address 地址信息
	 * @return 区域信息
	 */
	public String getAllRegion(Address address);
}
