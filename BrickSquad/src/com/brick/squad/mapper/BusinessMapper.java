package com.brick.squad.mapper;

/**
 * 商家信息表
 */
import com.brick.squad.pojo.Business;

public interface BusinessMapper {
  
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
}
