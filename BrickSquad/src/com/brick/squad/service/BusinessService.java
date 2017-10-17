package com.brick.squad.service;

import java.util.List;

import com.brick.squad.pojo.Business;
import com.brick.squad.util.Pagination;

public interface BusinessService {

	/**
	 * 根据商家信息id查询商家
	 * @param id
	 * @return 商家信息
	 */
	public Business findBusinessById(String id);
	
	/**
	 * 添加新商家信息
	 * @param business
	 */
	public void insertBusiness(Business business);
	
	
	/**
	 * 更新商家信息
	 * @param business
	 */
	public void updateBusinessById(Business business);
	
	/**
	 * 删除商家信息
	 * @param id
	 */
	public void deleteBusinessById(String id);
	
	/**
	 * 根据分页条件查询商家信息
	 * @param pagination
	 * @return 商家信息
	 */
	public String businessPagination(Pagination pagination);
}
