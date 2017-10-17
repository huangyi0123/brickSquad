package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.pojo.Buyers;

public interface BuyersMapper {
	public void insertBuyers(Buyers buyers) throws Exception;
	public List<Buyers> findBuyersByUUID (String id) throws Exception;
	public void updateBuyersById(Buyers buyers) throws Exception;
	public void deleteBuyersById(Buyers buyers) throws Exception;
}
