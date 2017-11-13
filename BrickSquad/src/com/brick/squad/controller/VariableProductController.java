package com.brick.squad.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.criteria.Order;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.Article;
import com.brick.squad.pojo.OrderRated;
import com.brick.squad.pojo.Orders;
import com.brick.squad.pojo.ShoppingCar;
import com.brick.squad.pojo.User;
import com.brick.squad.service.ArticleService;
import com.brick.squad.service.RatedService;
import com.brick.squad.service.ShoppingCarService;
import com.brick.squad.service.VariableProductService;

/**
 * 商品详情页操作相关的controller
 * 
 * @author 吴文鑫
 * 
 */
@Controller
@RequestMapping("/variableProduct")
public class VariableProductController {
	@Autowired
	@Qualifier("articleService")
	private ArticleService articleService;
	@Autowired
	@Qualifier("ratedService")
	private RatedService ratedService;
	@Autowired
	@Qualifier("shoppingCarService")
	private ShoppingCarService shoppingCarService;
	@Autowired
	@Qualifier("variableProductService")
	private VariableProductService variableProductService;

	/**
	 * 商品详情页立即购买商品
	 * 
	 * @param articleNumber
	 *            商品数量
	 * @param articleId
	 *            商品ID
	 * @param request
	 */
	@RequestMapping("/userBuyImmediately")
	public void userBuyImmediately(int articleNumber, String articleId,
			HttpServletRequest request) throws Exception {
		User user = (User) request.getSession().getAttribute("user");
		if (user != null) {
			variableProductService
					.userBuyImmediatelyAddOrdersandAddOrderDetails(
							articleNumber, articleId, user.getId());
		}

	}

	/**
	 * 商品详情页用户添加商品到购物车
	 * 
	 * @param shoppingCar
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/userAddArticleToShoppingCar")
	@ResponseBody
	public String userAddArticleToShoppingCar(ShoppingCar shoppingCar)
			throws Exception {
		// 判断传过来的数据是否为空，为空则返回错误
		if (shoppingCar.getArticleId() != null
				&& shoppingCar.getNumber() != null
				&& shoppingCar.getPerId() != null) {
			// 设置当前时间为购物车添加时间
			shoppingCar.setDate(new Date());
			shoppingCarService.insertShoppingCar(shoppingCar);
		} else {
			return "fail";
		}

		return "success";
	}

	/**
	 * 跳转到商品详情页面
	 * 
	 * @param productId
	 *            商品ID
	 * @return 详情页面
	 * @throws Exception
	 */
	@RequestMapping("/toVariable_product")
	public String toVariable_product(HttpServletRequest request,
			String productId) throws Exception {
		Article article = new Article();
		article = articleService.findArticleById(productId);
		request.setAttribute("article", article);
		// 查询图片路径
		String imgpath = article.getImage();
		imgpath = "resource/image/articleImg/" + imgpath + "/";
		imgpath = request.getSession().getServletContext().getRealPath(imgpath);
		List<String> imgpathlList = new ArrayList<String>();
		File file = new File(imgpath);
		File[] files = file.listFiles();
		for (File file2 : files) {
			imgpathlList.add(file2.getName());
		}
		request.setAttribute("images", imgpathlList);
		// 根据商品ID查询销售总量
		int SalesNumberTotal = articleService
				.selectArticleSalesNumberTotalById(productId) + 500;
		request.setAttribute("SalesNumberTotal", SalesNumberTotal);
		// 根据商品ID查询评论总量
		int ratedTotal = articleService.selectArticleRatedTotalById(productId) + 500;
		request.setAttribute("ratedTotal", ratedTotal);
		// 根据商品ID查询评论内容
		List<OrderRated> orderRateds = ratedService
				.findOrderRatedByArticleId(productId);
		request.setAttribute("orderRateds", orderRateds);
		return "frontEnd_manage/front_bootstrap/variable_product";
	}

}
