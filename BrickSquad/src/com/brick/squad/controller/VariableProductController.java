package com.brick.squad.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.expand.OrderDetailsAndArticleExtend;
import com.brick.squad.pojo.Address;
import com.brick.squad.pojo.Article;
import com.brick.squad.pojo.OrderDetails;
import com.brick.squad.pojo.OrderRated;
import com.brick.squad.pojo.Orders;
import com.brick.squad.pojo.ShoppingCar;
import com.brick.squad.pojo.User;
import com.brick.squad.service.AddressService;
import com.brick.squad.service.ArticleService;
import com.brick.squad.service.OrderDetailsService;
import com.brick.squad.service.OrdersService;
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
	@Qualifier("addressService")
	private AddressService addressService;
	@Autowired
	@Qualifier("orderDetailsService")
	private OrderDetailsService orderDetailsService;
	@Autowired
	@Qualifier("ordersService")
	private OrdersService ordersService;
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

	@RequestMapping("/toUserAddReceivingAddress")
	public String toUserAddReceivingAddress(HttpServletRequest request) {
		String data = addressService.findRegionsByLevel();
		request.setAttribute("data", data);
		return "frontEnd_manage/front_bootstrap/userAddReceivingAddress";
	}

	/**
	 * 订单页修改收货地址
	 * 
	 * @param orderId
	 * @param receivingAddressId
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/userUpdatereceivingAddress")
	@ResponseBody
	public String userUpdatereceivingAddress(String orderId,
			String receivingAddressId) throws Exception {
		if (receivingAddressId != null && orderId != null) {
			Orders orders = ordersService.findOrdersById(orderId);
			if (orders != null) {
				orders.setReceivingAddress(receivingAddressId);
				ordersService.updateOrdersreceivingAddressById(orders);
			} else {
				return "fail";
			}
		} else {
			return "fail";
		}
		return "success";
	}

	/**
	 * 跳转到订单确认页
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/toconfirm_order")
	public String toconfirm_order(String ordersId, HttpServletRequest request)
			throws Exception {
		Orders orders = new Orders();
		List<OrderDetailsAndArticleExtend> listOrderDetailsAndArticleExtend = new ArrayList<OrderDetailsAndArticleExtend>();
		List<Address> listAddresses = new ArrayList<Address>();
		if (ordersId != null) {
			orders = ordersService.findOrdersById(ordersId);
			// 根据商品ID查询商品明细，以及对应的商品信息
			listOrderDetailsAndArticleExtend = orderDetailsService
					.findOrderDetailsByOrdersId(ordersId);
			if (orders.getBuyId() != null) {
				// 查询当前账户的所有收货地址信息
				listAddresses = addressService.findAddressByBuyersId(orders
						.getBuyId());
				if (!(listAddresses.isEmpty())) {
					for (Address address : listAddresses) {
						String addressDetailed = addressService
								.findByIdAllAddress(address.getId())
								+ "("
								+ address.getConsigneeName()
								+ "   "
								+ address.getConsigneePhone() + ")";
						address.setDetailed(addressDetailed);
					}
				}
			}

		}

		request.setAttribute("listAddresses", listAddresses);
		request.setAttribute("orders", orders);
		request.setAttribute("listOrderDetailsAndArticleExtend",
				listOrderDetailsAndArticleExtend);
		return "frontEnd_manage/front_bootstrap/confirm_order";
	}

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
	@ResponseBody
	public String userBuyImmediately(int articleNumber, String articleId,
			HttpServletRequest request) throws Exception {
		User user = (User) request.getSession().getAttribute("user");
		if (user != null) {
			String ordersId = variableProductService
					.userBuyImmediatelyAddOrdersandAddOrderDetails(
							articleNumber, articleId, user.getId());
			if (ordersId != null) {
				return ordersId;
			}
			return "fail";
		}
		return "fail";
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
		if (files != null && files.length > 0) {
			for (File file2 : files) {
				imgpathlList.add(file2.getName());
			}
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
