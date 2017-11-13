package com.brick.squad.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.mapper.BuyersMapper;
import com.brick.squad.mapper.OrderDetailsMapper;
import com.brick.squad.mapper.OrdersMapper;
import com.brick.squad.pojo.Article;
import com.brick.squad.pojo.Buyers;
import com.brick.squad.pojo.OrderDetails;
import com.brick.squad.pojo.Orders;
import com.brick.squad.service.ArticleService;
import com.brick.squad.service.OrdersService;
import com.brick.squad.service.VariableProductService;

public class VariableProductServiceImpl implements VariableProductService {
	@Autowired
	@Qualifier("articleService")
	private ArticleService articleService;
	@Autowired
	@Qualifier("ordersMapper")
	private OrdersMapper ordersMapper;
	@Autowired
	@Qualifier("orderDetailsMapper")
	private OrderDetailsMapper orderDetailsMapper;
	@Autowired
	@Qualifier("buyersMapper")
	private BuyersMapper buyersMapper;

	/**
	 * 用户立即购买添加订单信息
	 * 
	 * @param articleNumber
	 *            商品数量
	 * @param articleId
	 *            商品ID
	 * @param userId
	 *            当前用户ID
	 * @throws Exception
	 */
	@Override
	public void userBuyImmediatelyAddOrdersandAddOrderDetails(
			int articleNumber, String articleId, String userId)
			throws Exception {
		// start 订单生成插入开始
		Orders orders = new Orders();
		// 1买家ID
		orders.setBuyId(userId);
		// 2运单号生成规则 19位字符串：当前时间（年月日+时分秒）+五位随机数
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(
				"yyyyMMddhhmmss");
		String OrderNo = simpleDateFormat.format(new Date());
		String randomFiveString = (((int) ((Math.random() * 9 + 1) * 10000)))
				+ "";
		OrderNo = OrderNo + randomFiveString;
		orders.setNo(OrderNo);
		// 3订单数量
		orders.setNumber(articleNumber);
		// 4订单生成时间
		orders.setProductionDate(new Date());
		// 5订单状态 待付款
		orders.setStateId("4933fb74c84311e7aca65254002ec43c");
		Article article = articleService.findArticleById(articleId);
		Float money = Float.parseFloat(article.getPrice()) * articleNumber;
		// 6订单金额
		orders.setMoney(money);
		// 收货地址ID
		Buyers buyers = new Buyers();
		buyers = buyersMapper.findBuyersById(userId);
		orders.setReceivingAddress(buyers.getDeliveryAddressId());
		ordersMapper.insertOrders(orders);
		// end 订单生成插入结束
		// start 订单明细表插入开始

		OrderDetails orderDetails = new OrderDetails();
		orderDetails.setArticleId(articleId);
		orderDetails.setNumber(articleNumber);
		orderDetails.setOrdersId(orders.getId());
		orderDetails.setSubtotal(money);
		orderDetailsMapper.insertOrderDetails(orderDetails);

		// end 订单明细表插入结束
	}

}
