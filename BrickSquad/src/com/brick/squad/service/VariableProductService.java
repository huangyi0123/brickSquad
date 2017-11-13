package com.brick.squad.service;

/**
 * 
 * @author 吴文鑫
 * 
 */
public interface VariableProductService {
	/**
	 * 用户立即购买添加订单信息
	 * 
	 * @param articleNumber
	 *            商品数量
	 * @param articleId
	 *            商品ID
	 * @param userId
	 *            当前用户ID
	 */
	public void userBuyImmediatelyAddOrdersandAddOrderDetails(
			int articleNumber, String articleId, String userId) throws Exception;
}
