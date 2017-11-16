package com.brick.squad.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.expand.ShoppingCarAndArticle;
import com.brick.squad.expand.ShoppingCarExpand;
import com.brick.squad.mapper.ArticleMapper;
import com.brick.squad.mapper.BuyersMapper;
import com.brick.squad.mapper.OrderDetailsMapper;
import com.brick.squad.mapper.OrdersMapper;
import com.brick.squad.mapper.PersonalInformationMapper;
import com.brick.squad.mapper.ShoppingCarMapper;
import com.brick.squad.pojo.Article;
import com.brick.squad.pojo.Buyers;
import com.brick.squad.pojo.OrderDetails;
import com.brick.squad.pojo.Orders;
import com.brick.squad.pojo.PersonalInformation;
import com.brick.squad.pojo.ShoppingCar;
import com.brick.squad.service.PersonalInformationService;
import com.brick.squad.service.ShoppingCarService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;
import com.brick.squad.util.ShoppingCarPagination;
import com.brick.squad.util.Util;

/**
 * 业务层：实现购物车接口类
 * */
public class ShoppingCarServiceImpl implements ShoppingCarService {
	@Autowired
	@Qualifier("buyersMapper")
	private BuyersMapper buyersMapper;
	@Autowired
	@Qualifier("shoppingCarMapper")
	private ShoppingCarMapper shoppingCarMapper;
	@Autowired
	@Qualifier("articleMapper")
	private ArticleMapper articleMapper;
	@Autowired
	@Qualifier("personalInformationMapper")
	private PersonalInformationMapper personalInformationMapper;
	@Autowired
	@Qualifier("personalInformationService")
	private PersonalInformationService personalInformationService;
	@Autowired
	@Qualifier("ordersMapper")
	private OrdersMapper ordersMapper;
	@Autowired
	@Qualifier("orderDetailsMapper")
	private OrderDetailsMapper orderDetailsMapper;

	@Override
	/**根据ID查询购物车*/
	public ShoppingCar findShoppingCarById(String id) throws Exception {
		return shoppingCarMapper.findShoppingCarById(id);
	}

	@Override
	/**添加购物车*/
	public void insertShoppingCar(ShoppingCar shoppingCar) throws Exception {
		shoppingCarMapper.insertShoppingCar(shoppingCar);
	}

	@Override
	/**根据ID删除购物车*/
	public void deleteShoppingCarById(String id) throws Exception {
		shoppingCarMapper.deleteShoppingCarById(id);
	}

	@Override
	/**根据ID修改购物车*/
	public void updateShoppingCarById(ShoppingCar shoppingCar) throws Exception {
		shoppingCarMapper.updateShoppingCarById(shoppingCar);
	}

	@Override
	/**查询购物车所有信息*/
	public List<ShoppingCar> findShoppingCar() throws Exception {
		List<ShoppingCar> shoppingCars = shoppingCarMapper.findShoppingCar();
		return shoppingCars;
	}

	@Override
	/**分页查询购物车*/
	public String shoppingCarPagination(Pagination pagination) throws Exception {
		List<ShoppingCarExpand> regions = shoppingCarMapper
				.shoppingCarPagination(pagination);
		int row = shoppingCarMapper.findShoppingCarCount(pagination);
		Util<ShoppingCarExpand> util = new Util<ShoppingCarExpand>();
		String data = util.SplitPage(regions, row);
		return data;
	}

	@Override
	/**
	 * 查询购物车，关联到商品和老人信息的字段
	 * */
	public String findArticleAndPersonalInformation() throws Exception {
		List<Select> articles = articleMapper.findArticle();
		List<Select> personalInformations = personalInformationMapper
				.findAllPersonalInformation();
		Map<String, List> map = new HashMap<String, List>();
		map.put("article", articles);
		map.put("personalInformation", personalInformations);
		JSONArray jsonArray = new JSONArray();
		String data = jsonArray.fromObject(map).toString();
		return data;
	}

	@Override
	/**查询购物车详细信息，关联查询到老人姓名与商品名称*/
	public ShoppingCarExpand findShoppingCarAndUserAndPsersonalInformationById(
			String id) throws Exception {
		ShoppingCarExpand shoppingCarExpand = shoppingCarMapper
				.findShoppingCarAndUserAndPsersonalInformationById(id);
		return shoppingCarExpand;
	}

	/**
	 * 根据老人id查询出相应的信息，分页显示
	 */
	@Override
	public Map<String, Object> findArticIdAllArtic(
			ShoppingCarPagination shoppingCarPagination) {

		Map<String, Object> map = new HashMap<String, Object>();
		List<ShoppingCarAndArticle> list = shoppingCarMapper
				.findArticIdAllArtic(shoppingCarPagination);
		map.put("list", list);
		int n = shoppingCarMapper
				.findShoppingCarPerIdCount(shoppingCarPagination);
		shoppingCarPagination.setCount(n);
		map.put("shoppingCarPagination", shoppingCarPagination);
		float allprice = shoppingCarMapper
				.findUserAllPrice(shoppingCarPagination.getPerId());
		map.put("allprice", allprice);
		return map;
	}

	@Override
	/**
	 * 根据购物车商品ID查询购物车列表商品
	 * */
	public List<ShoppingCar> AddShoppingCarByArticleId(String articleId)
			throws Exception {
		List<ShoppingCar> shoppingCar = shoppingCarMapper
				.findShoppingCarByArticleId(articleId);
		return shoppingCar;
	}

	@Override
	public Integer findShoppingCarPerIdCount(
			ShoppingCarPagination shoppingCarPagination) {
		// TODO Auto-generated method stub
		int row = shoppingCarMapper
				.findShoppingCarPerIdCount(shoppingCarPagination);
		return row;
	}

	@Override
	public float updateShoppingNumber(ShoppingCar shoppingCar) {
		shoppingCarMapper.updateShoppingCarNumberById(shoppingCar);
		float price = shoppingCarMapper
				.findUserAllPrice(shoppingCar.getPerId());
		return price;
	}

	@Override
	public String shoppingCarAddOrder(String ids, float price, String buyId) {
		Orders orders = new Orders();
		// 1买家ID
		orders.setBuyId(buyId);
		// 2运单号生成规则 19位字符串：当前时间（年月日+时分秒）+五位随机数
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(
				"yyyyMMddhhmmss");
		String OrderNo = simpleDateFormat.format(new Date());
		String randomFiveString = (((int) ((Math.random() * 9 + 1) * 10000)))
				+ "";
		OrderNo = OrderNo + randomFiveString;
		orders.setNo(OrderNo);
		// 3订单状态 待付款
		orders.setStateId("4933fb74c84311e7aca65254002ec43c");
		// 4收货地址ID
		Buyers buyers = new Buyers();
		buyers = buyersMapper.findBuyersById(buyId);
		if (buyers != null) {
			orders.setReceivingAddress(buyers.getDeliveryAddressId());
		}
		// 5订单金额
		orders.setMoney(price);
		// 6订单数量
		orders.setNumber(1);
		// 7订单生成时间
		orders.setProductionDate(new Date());
		ordersMapper.insertOrders(orders);
		// 分割id
		String[] carids = ids.split(",");
		for (String item : carids) {
			ShoppingCar shoppingCar = shoppingCarMapper
					.findShoppingCarById(item);
			Article article = articleMapper.findArticleById(shoppingCar
					.getArticleId());
			OrderDetails orderDetails = new OrderDetails();
			orderDetails.setArticleId(shoppingCar.getArticleId());
			orderDetails.setNumber(shoppingCar.getNumber());
			orderDetails.setOrdersId(orders.getId());
			orderDetails.setSubtotal(shoppingCar.getNumber()
					* Float.parseFloat(article.getPrice()));
			orderDetailsMapper.insertOrderDetails(orderDetails);
			shoppingCarMapper.deleteShoppingCarById(shoppingCar.getId());
		}
		return orders.getId();
	}

}
