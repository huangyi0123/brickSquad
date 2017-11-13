package com.brick.squad.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.pojo.Article;
import com.brick.squad.pojo.Orders;
import com.brick.squad.service.ArticleService;
import com.brick.squad.service.VariableProductService;

public class VariableProductServiceImpl implements VariableProductService {
	@Autowired
	@Qualifier("articleService")
	private ArticleService articleService;
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
			int articleNumber, String articleId, String userId) throws Exception {
		Orders orders = new Orders();
		orders.setBuyId(userId);
		// 运单号生成规则 19位字符串：当前时间（年月日+时分秒）+五位随机数
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(
				"yyyyMMddhhmmss");
		String OrderNo = simpleDateFormat.format(new Date());
		String randomFiveString = (((int) ((Math.random() * 9 + 1) * 10000)))
				+ "";
		OrderNo = OrderNo + randomFiveString;
		orders.setNo(OrderNo);
		orders.setNumber(articleNumber);
		orders.setProductionDate(new Date());
		//订单状态 待付款
		orders.setStateId("4933fb74c84311e7aca65254002ec43c");
		Article article = new Article();
		if (articleId!=null) {
			 article =articleService.findArticleById(articleId);
			 if (article!=null) {
				 Float money=Float.parseFloat(article.getPrice())*articleNumber;
					System.out.println(money);
			}
				
		}
		
	}
	

}
