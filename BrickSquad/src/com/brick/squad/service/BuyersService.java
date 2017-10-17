package com.brick.squad.service;

import java.util.List;

import com.brick.squad.pojo.Buyers;

public interface BuyersService {
	public void insertBuyers(Buyers buyers) throws Exception;
	//根据id模糊查询
	public List<Buyers> findBuyersByUUID (String id) throws Exception;
	public void updateBuyersById(Buyers buyers) throws Exception;
	public void deleteBuyersById(Buyers buyers) throws Exception;
}
