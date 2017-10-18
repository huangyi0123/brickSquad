package com.brick.squad.service;

import java.util.List;

import com.brick.squad.pojo.Buyers;
import com.brick.squad.util.Pagination;

public interface BuyersService {
	public void insertBuyers(Buyers buyers) throws Exception;
	//根据id模糊查询
	public List<Buyers> findBuyersByUUID (String id) throws Exception;
	public void updateBuyersById(Buyers buyers) throws Exception;
	public void deleteBuyersById(Buyers buyers) throws Exception;
	public String buyersPagination(Pagination pagination) throws Exception;
	public int findBuyersAllCount() throws Exception;
}
