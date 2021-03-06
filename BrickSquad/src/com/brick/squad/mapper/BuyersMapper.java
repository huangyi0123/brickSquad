package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.pojo.Buyers;
import com.brick.squad.util.Pagination;

public interface BuyersMapper {
	public Buyers findBuyersById(String id);
	public void insertBuyers(Buyers buyers) throws Exception;

	public Buyers findBuyersByUUID(String id) throws Exception;

	public void updateBuyersById(Buyers buyers) throws Exception;

	public void deleteBuyersById(String id) throws Exception;

	public List<Buyers> buyersPagination(Pagination pagination)
			throws Exception;

	public int findBuyersAllCount(Pagination pagination) throws Exception;

	/**
	 * 用户Orders查询需要的字段：姓名
	 * */
	public List<Buyers> findBuysersName() throws Exception;
}
