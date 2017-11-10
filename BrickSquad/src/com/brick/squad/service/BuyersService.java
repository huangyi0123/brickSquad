package com.brick.squad.service;

import java.util.List;

import com.brick.squad.expand.AddressAndBuyersExpand;
import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.Buyers;
import com.brick.squad.util.Pagination;

public interface BuyersService {
	/**
	 * 根据ID查询地址信息
	 * 
	 * @param id
	 * @return 地址对象
	 * @throws Exception
	 */
	public Address findAddressById(String id) throws Exception;

	/**
	 * 根据region表中的字段Level查询
	 * 
	 * @return region集合（大部分情况用于查询省份集合《Level=1》）
	 */
	public String findRegionsByLevel();

	public void insertBuyers(AddressAndBuyersExpand addressAndBuyersExpand)
			throws Exception;

	// 根据id查询
	public Buyers findBuyersByUUID(String id) throws Exception;

	public void updateBuyersById(AddressAndBuyersExpand addressAndBuyersExpand)
			throws Exception;

	public void deleteBuyersById(String id) throws Exception;

	public String buyersPagination(Pagination pagination) throws Exception;

	// public int findBuyersAllCount() throws Exception;
	public String findPnameByBuyersId();
}
