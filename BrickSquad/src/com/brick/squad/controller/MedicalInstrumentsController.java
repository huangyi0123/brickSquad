package com.brick.squad.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.expand.ArticleExpand;
import com.brick.squad.expand.TypeExpand;
import com.brick.squad.pojo.Article;
import com.brick.squad.pojo.Collection;
import com.brick.squad.pojo.ShoppingCar;
import com.brick.squad.pojo.User;
import com.brick.squad.service.ArticleService;
import com.brick.squad.service.CollectionService;
import com.brick.squad.service.ShoppingCarService;
import com.brick.squad.service.TypeService;
import com.brick.squad.util.PageBeanUtil;
import com.brick.squad.util.YiLiaoUtile;

@Controller
@RequestMapping("/MedicalInstruments")
public class MedicalInstrumentsController {
	@Autowired
	@Qualifier("articleService")
	private ArticleService articleService;
	@Autowired
	@Qualifier("typeService")
	private TypeService typeService;
	@Autowired
	@Qualifier("shoppingCarService")
	private ShoppingCarService shoppingCarService;
	@Autowired
	@Qualifier("collectionService")
	private CollectionService collectionService;

	/***
	 * 医疗器械页面controller
	 * 
	 * @throws Exception
	 */
	@RequestMapping("/toShop_left_sidebar")
	public String toShop_left_sidebar(HttpServletRequest request,
			PageBeanUtil pageBean) throws Exception {
		/** 医疗器械一级分类查询 */
		List<TypeExpand> listType = typeService
				.findIdAndTypeNmae("yiliaoqixie");
		request.setAttribute("listType", listType);
		/** 医疗器械查询商品图片和商品名称 */
		YiLiaoUtile yiLiaoUtile = new YiLiaoUtile();
		List<Article> list = articleService
				.findArticleImgAndName("laorenjianfuyongpin");
		List<Article> listArticle = yiLiaoUtile.findArticleImgAndName(request,
				list);
		request.setAttribute("listArticle", listArticle);
		List<Article> list1 = articleService.findArticleImgAndName("zuixin");
		List<Article> listArticle1 = yiLiaoUtile.findArticleImgAndName(request,
				list1);
		request.setAttribute("listArticle1", listArticle1);
		List<ArticleExpand> list2 = articleService
				.findArticleBuyNumberAndMedicle("yiliaoqixie");
		List<ArticleExpand> listArticle2 = yiLiaoUtile.findArticleImgAndName(
				request, list2);
		request.setAttribute("listArticle2", listArticle2);

		int page = pageBean.getPage();
		pageBean = articleService.findArtivleAndMedicalInstrumentsPage(page);
		List<Article> listArt = pageBean.getList();
		List<Article> listArticle4 = yiLiaoUtile.findArticleImgAndName(request,
				listArt);
		
		pageBean.setList(listArticle4);
		request.getSession().setAttribute("url", "toShop_left_sidebar");
		request.getSession().setAttribute("url1", "toShop_left_sidebar");
		
	/*	request.setAttribute("url", "toShop_left_sidebar");*/
		request.setAttribute("pageBean", pageBean);

		return "frontEnd_manage/front_bootstrap/shop_left_sidebar";
	}

	@RequestMapping("/findmedicalpageBean")
	public String findmedicalpageBean(HttpServletRequest request,
			PageBeanUtil pageBean) throws Exception {
		/** 医疗器械一级分类查询 */
		List<TypeExpand> listType = typeService
				.findIdAndTypeNmae("yiliaoqixie");
		request.setAttribute("listType", listType);
		/** 医疗器械查询商品图片和商品名称 */
		YiLiaoUtile yiLiaoUtile = new YiLiaoUtile();
		List<Article> list = articleService
				.findArticleImgAndName("laorenjianfuyongpin");
		List<Article> listArticle = yiLiaoUtile.findArticleImgAndName(request,
				list);
		request.setAttribute("listArticle", listArticle);
		List<Article> list1 = articleService.findArticleImgAndName("zuixin");
		List<Article> listArticle1 = yiLiaoUtile.findArticleImgAndName(request,
				list1);
		request.setAttribute("listArticle1", listArticle1);
		List<ArticleExpand> list2 = articleService
				.findArticleBuyNumberAndMedicle("yiliaoqixie");
		List<ArticleExpand> listArticle2 = yiLiaoUtile.findArticleImgAndName(
				request, list2);
		request.setAttribute("listArticle2", listArticle2);
		int page = pageBean.getPage();
		int limitPage = pageBean.getLimitPage();
		pageBean = articleService.findArtivleAndMedicalInstrumentsPage(page,
				limitPage);
		List<Article> listArt = pageBean.getList();
		List<Article> listArticle4 = yiLiaoUtile.findArticleImgAndName(request,
				listArt);
		pageBean.setList(listArticle4);
		request.setAttribute("pageBean", pageBean);
		request.getSession().setAttribute("url1", "toShop_left_sidebar");
		request.setAttribute("url", "toShop_left_sidebar");
		return "frontEnd_manage/front_bootstrap/shop_left_sidebar";
	}

	@RequestMapping("/findOrderByMedicalInstruments")
	public String findOrderByMedicalInstruments(HttpServletRequest request,
			PageBeanUtil pageBean) throws Exception {
		/** 医疗器械一级分类查询 */
		List<TypeExpand> listType = typeService
				.findIdAndTypeNmae("yiliaoqixie");
		request.setAttribute("listType", listType);
		/** 医疗器械查询商品图片和商品名称 */
		YiLiaoUtile yiLiaoUtile = new YiLiaoUtile();
		List<Article> list = articleService
				.findArticleImgAndName("laorenjianfuyongpin");
		List<Article> listArticle = yiLiaoUtile.findArticleImgAndName(request,
				list);
		request.setAttribute("listArticle", listArticle);
		List<Article> list1 = articleService.findArticleImgAndName("zuixin");
		List<Article> listArticle1 = yiLiaoUtile.findArticleImgAndName(request,
				list1);
		request.setAttribute("listArticle1", listArticle1);
		List<ArticleExpand> list2 = articleService
				.findArticleBuyNumberAndMedicle("yiliaoqixie");
		List<ArticleExpand> listArticle2 = yiLiaoUtile.findArticleImgAndName(
				request, list2);
		request.setAttribute("listArticle2", listArticle2);
		int page = pageBean.getPage();
		int sequence = pageBean.getSequence();
		int limitPage = pageBean.getLimitPage();
		pageBean = articleService.findOrderByMedicalInstruments(page, sequence,
				limitPage);
		List<Article> listArt = pageBean.getList();
		List<Article> listArticle4 = yiLiaoUtile.findArticleImgAndName(request,
				listArt);
		pageBean.setList(listArticle4);
		if (sequence == 3) {
			request.setAttribute("url", "findOrderByMedicalInstrumentsDate");
		} else {
			request.setAttribute("url", "findOrderByMedicalInstruments");
		}
		
		request.setAttribute("pageBean", pageBean);
		return "frontEnd_manage/front_bootstrap/shop_left_sidebar";
	}

	@RequestMapping("/findOrderByMedicalInstrumentsDate")
	public String findOrderByMedicalInstrumentsDate(HttpServletRequest request,
			PageBeanUtil pageBean) throws Exception {
		/** 医疗器械一级分类查询 */
		List<TypeExpand> listType = typeService
				.findIdAndTypeNmae("yiliaoqixie");
		request.setAttribute("listType", listType);
		/** 医疗器械查询商品图片和商品名称 */
		YiLiaoUtile yiLiaoUtile = new YiLiaoUtile();
		List<Article> list = articleService
				.findArticleImgAndName("laorenjianfuyongpin");
		List<Article> listArticle = yiLiaoUtile.findArticleImgAndName(request,
				list);
		request.setAttribute("listArticle", listArticle);
		List<Article> list1 = articleService.findArticleImgAndName("zuixin");
		List<Article> listArticle1 = yiLiaoUtile.findArticleImgAndName(request,
				list1);
		request.setAttribute("listArticle1", listArticle1);
		List<ArticleExpand> list2 = articleService
				.findArticleBuyNumberAndMedicle("yiliaoqixie");
		List<ArticleExpand> listArticle2 = yiLiaoUtile.findArticleImgAndName(
				request, list2);
		request.setAttribute("listArticle2", listArticle2);
		int page = pageBean.getPage();
		int sequence = pageBean.getSequence();
		int limitPage = pageBean.getLimitPage();
		pageBean = articleService.findOrderByMedicalInstrumentsDate(page,
				sequence, limitPage);
		List<Article> listArt = pageBean.getList();
		List<Article> listArticle4 = yiLiaoUtile.findArticleImgAndName(request,
				listArt);
		pageBean.setList(listArticle4);
		request.setAttribute("url", "findOrderByMedicalInstrumentsDate");
		request.getSession().setAttribute("url1", "toShop_left_sidebar");
		request.setAttribute("pageBean", pageBean);
	
		return "frontEnd_manage/front_bootstrap/shop_left_sidebar";
	}

	@RequestMapping("/findOrderByMedicalInstrumentsPop")
	public String findOrderByMedicalInstrumentsPop(HttpServletRequest request,
			PageBeanUtil pageBean) throws Exception {
		/** 医疗器械一级分类查询 */
		List<TypeExpand> listType = typeService
				.findIdAndTypeNmae("yiliaoqixie");
		request.setAttribute("listType", listType);
		/** 医疗器械查询商品图片和商品名称 */
		YiLiaoUtile yiLiaoUtile = new YiLiaoUtile();
		List<Article> list = articleService
				.findArticleImgAndName("laorenjianfuyongpin");
		List<Article> listArticle = yiLiaoUtile.findArticleImgAndName(request,
				list);
		request.setAttribute("listArticle", listArticle);
		List<Article> list1 = articleService.findArticleImgAndName("zuixin");
		List<Article> listArticle1 = yiLiaoUtile.findArticleImgAndName(request,
				list1);
		request.setAttribute("listArticle1", listArticle1);
		List<ArticleExpand> list2 = articleService
				.findArticleBuyNumberAndMedicle("yiliaoqixie");
		List<ArticleExpand> listArticle2 = yiLiaoUtile.findArticleImgAndName(
				request, list2);
		request.setAttribute("listArticle2", listArticle2);
		int page = pageBean.getPage();
		int sequence = pageBean.getSequence();
		int limitPage = pageBean.getLimitPage();
		pageBean = articleService.findOrderByMedicalInstrumentsPop(page,
				sequence, limitPage);
		List<Article> listArt = pageBean.getList();
		List<Article> listArticle4 = yiLiaoUtile.findArticleImgAndName(request,
				listArt);
		pageBean.setList(listArticle4);
		request.setAttribute("url", "findOrderByMedicalInstrumentsPop");
	
		request.setAttribute("pageBean", pageBean);
		return "frontEnd_manage/front_bootstrap/shop_left_sidebar";
	}

	@RequestMapping("/findSecondMedicalInstruments")
	@ResponseBody
	public String findSecondMedicalInstruments(HttpServletRequest request,
			String typeId) throws Exception {
		List<Article> listArticle = articleService
				.findSecondMedicalInstruments(typeId);
		YiLiaoUtile<Article> yiLiaoUtile = new YiLiaoUtile<Article>();
		List<Article> list = yiLiaoUtile.findArticleImgAndName(request,
				listArticle);
		JSONArray jsonArray = new JSONArray();
		String data = jsonArray.fromObject(list).toString();
		return data;
	}

	@RequestMapping("/addCartMedicalInstruments")
	@ResponseBody
	public String addCartMedicalInstruments(HttpServletRequest request,
			String articleId) throws Exception {
		String data;
		User user = (User) request.getSession().getAttribute("user");
		if (user == null) {
			data = "3";
		} else {

			List<ShoppingCar> shoppingCart = shoppingCarService
					.AddShoppingCarByArticleId(articleId);

			if (shoppingCart.size() != 0) {
				data = "1";
			} else {
				ShoppingCar shoppingCar = new ShoppingCar();
				shoppingCar.setArticleId(articleId);
				shoppingCar.setDate(new Date());
				shoppingCar.setNumber(1);
				shoppingCar.setPerId(user.getId());
				shoppingCarService.insertShoppingCar(shoppingCar);
				data = "2";
			}
		}
		return data;
	}

	@RequestMapping("/addWishlistMedicalInstruments")
	@ResponseBody
	public String addWishlistMedicalInstruments(HttpServletRequest request,
			String articleId) throws Exception {
		User user = (User) request.getSession().getAttribute("user");
		String data;
		if (user == null) {
			data = "3";
		} else {

			List<Collection> listCollection = collectionService
					.findCollectionByArticleId(articleId);

			if (listCollection.size() != 0) {
				data = "1";
			} else {
				Collection collection = new Collection();
				collection.setArticleId(articleId);
				collection.setColDate(new Date());
				collection.setPerId(user.getId());
				collectionService.insertCollection(collection);
				data = "2";
			}
		}
		return data;
	}

	/**
	 * 按价格范围查找商品
	 * 
	 * @throws Exception
	 */
	@RequestMapping("/findPriceScope")
	public String findPriceScope(HttpServletRequest request,
			PageBeanUtil pageBean) throws Exception {
		/** 医疗器械一级分类查询 */
		List<TypeExpand> listType = typeService
				.findIdAndTypeNmae("yiliaoqixie");
		request.setAttribute("listType", listType);
		/** 医疗器械查询商品图片和商品名称 */
		YiLiaoUtile yiLiaoUtile = new YiLiaoUtile();
		List<Article> list = articleService
				.findArticleImgAndName("laorenjianfuyongpin");
		List<Article> listArticle = yiLiaoUtile.findArticleImgAndName(request,
				list);
		request.setAttribute("listArticle", listArticle);
		List<Article> list1 = articleService.findArticleImgAndName("zuixin");
		List<Article> listArticle1 = yiLiaoUtile.findArticleImgAndName(request,
				list1);
		request.setAttribute("listArticle1", listArticle1);
		List<ArticleExpand> list2 = articleService
				.findArticleBuyNumberAndMedicle("yiliaoqixie");
		List<ArticleExpand> listArticle2 = yiLiaoUtile.findArticleImgAndName(
				request, list2);
		request.setAttribute("listArticle2", listArticle2);
		int page = pageBean.getPage();
		int limitPage = pageBean.getLimitPage();
		double minPrice = pageBean.getMin_price();
		double maxPrice = pageBean.getMax_price();
		pageBean = articleService.findPriceScope(page, limitPage, minPrice,
				maxPrice);
		List<Article> listArt = pageBean.getList();
		List<Article> listArticle5 = yiLiaoUtile.findArticleImgAndName(request,
				listArt);
		pageBean.setList(listArticle5);
		request.setAttribute("url", "findPriceScope");
		request.getSession().setAttribute("url1", "toShop_left_sidebar");
		request.setAttribute("pageBean", pageBean);
		return "frontEnd_manage/front_bootstrap/shop_left_sidebar";
	}
	/**
	 * 头部搜索
	 * @throws Exception */
	/*@RequestMapping("/findArticleTitle")
	public String findArticleTitle(HttpServletRequest request,PageBeanUtil pageBean) throws Exception{
		*//** 医疗器械一级分类查询 *//*
		List<TypeExpand> listType = typeService
				.findIdAndTypeNmae("yiliaoqixie");
		request.setAttribute("listType", listType);
		*//** 医疗器械查询商品图片和商品名称 *//*
		YiLiaoUtile yiLiaoUtile = new YiLiaoUtile();
		List<Article> list = articleService
				.findArticleImgAndName("laorenjianfuyongpin");
		List<Article> listArticle = yiLiaoUtile.findArticleImgAndName(request,
				list);
		request.setAttribute("listArticle", listArticle);
		List<Article> list1 = articleService.findArticleImgAndName("zuixin");
		List<Article> listArticle1 = yiLiaoUtile.findArticleImgAndName(request,
				list1);
		request.setAttribute("listArticle1", listArticle1);
		List<ArticleExpand> list2 = articleService
				.findArticleBuyNumberAndMedicle("yiliaoqixie");
		List<ArticleExpand> listArticle2 = yiLiaoUtile.findArticleImgAndName(
				request, list2);
		request.setAttribute("listArticle2", listArticle2);
		int page = pageBean.getPage();
		int limitPage = pageBean.getLimitPage();
		String s=pageBean.getS();
		String search_category=pageBean.getSearch_category();
		if(s==""){
			pageBean = articleService.findArticleTitles(page, limitPage,
					search_category);
		}else{	
		pageBean.setAname(s);
		pageBean = articleService.findArticleTitle(page, limitPage, s,
				search_category);
		}
		List<Article> listArt = pageBean.getList();
		List<Article> listArticle5 = yiLiaoUtile.findArticleImgAndName(request,
				listArt);
		pageBean.setList(listArticle5);
		request.setAttribute("url", "findArticleTitle");
		request.setAttribute("pageBean", pageBean);
	
		return "frontEnd_manage/front_bootstrap/shop_left_sidebar";
	}*/
	
	/**衣服类商品 
	 * @throws Exception */
	@RequestMapping("/findColthType")
	public String findColthType(HttpServletRequest request,PageBeanUtil pageBean,String typeId) throws Exception{
		/**一级分类查询 */
		List<TypeExpand> listType = typeService
				.findIdAndTypeNmae(typeId);
		request.setAttribute("listType", listType);
		/** 查询商品图片和商品名称 */
		pageBean.setParentId(typeId);
		List<String> listparentId=articleService.findArticleTypeIdSecond(pageBean);
		String parentId;
		if(listparentId.size()!=0){
			 parentId=listparentId.get(0);
		}else{
		 parentId=typeId;
		}
		YiLiaoUtile yiLiaoUtile = new YiLiaoUtile();
		List<Article> list = articleService
				.findArticleImgAndName(parentId);
		List<Article> listArticle = yiLiaoUtile.findArticleImgAndName(request,
				list);
		request.setAttribute("listArticle", listArticle);
		/**轮播最新商品展示*/
		List<Article> list1 = articleService.findArticleImgAndName("zuixin");
		List<Article> listArticle1 = yiLiaoUtile.findArticleImgAndName(request,
				list1);
		request.setAttribute("listArticle1", listArticle1);
		/**热门商品查询*/
		List<ArticleExpand> list2 = articleService
				.findArticleBuyNumberAndMedicle(typeId);
		List<ArticleExpand> listArticle2 = yiLiaoUtile.findArticleImgAndName(
				request, list2);
		request.setAttribute("listArticle2", listArticle2);
		
		/**分页查询*/
		int page = pageBean.getPage();
		pageBean = articleService.findArtivleTypePage(page,typeId);
		List<Article> listArt = pageBean.getList();
		List<Article> listArticle4 = yiLiaoUtile.findArticleImgAndName(request,
				listArt);
		pageBean.setList(listArticle4);
		request.getSession().setAttribute("url1", "findColthType");
		request.getSession().setAttribute("url", "findColthType");
		request.getSession().setAttribute("Ctype", typeId);
	/*	request.setAttribute("url", "toShop_left_sidebar");*/
		request.setAttribute("pageBean", pageBean);
		
		return "frontEnd_manage/front_bootstrap/shop_left_sidebar";
		
	}
	
	
	@RequestMapping("/findColthTypepageBean")
	public String findColthTypepageBean(HttpServletRequest request,
			PageBeanUtil pageBean,String typeId) throws Exception {
		/** 医疗器械一级分类查询 */
		System.out.println("========++++++++++++++========="+typeId);
		List<TypeExpand> listType = typeService
				.findIdAndTypeNmae(typeId);
		request.setAttribute("listType", listType);
		/** 医疗器械查询商品图片和商品名称 */
		pageBean.setParentId(typeId);
		List<String> listparentId=articleService.findArticleTypeIdSecond(pageBean);
		String parentId;
		if(listparentId.size()!=0){
			 parentId=listparentId.get(0);
		}else{
		 parentId=typeId;
		}
		YiLiaoUtile yiLiaoUtile = new YiLiaoUtile();
		/*String typeSecond=articleService.findTypeSecond(typeId);*/
		List<Article> list = articleService
				.findArticleImgAndName(parentId);
		List<Article> listArticle = yiLiaoUtile.findArticleImgAndName(request,
				list);
		request.setAttribute("listArticle", listArticle);
		List<Article> list1 = articleService.findArticleImgAndName("zuixin");
		List<Article> listArticle1 = yiLiaoUtile.findArticleImgAndName(request,
				list1);
		request.setAttribute("listArticle1", listArticle1);
		List<ArticleExpand> list2 = articleService
				.findArticleBuyNumberAndMedicle(typeId);
		List<ArticleExpand> listArticle2 = yiLiaoUtile.findArticleImgAndName(
				request, list2);
		request.setAttribute("listArticle2", listArticle2);
		int page = pageBean.getPage();
		int limitPage = pageBean.getLimitPage();
		pageBean = articleService.findArtivleAndMedicalInstrumentsPage(page,
				limitPage,typeId);
		List<Article> listArt = pageBean.getList();
		List<Article> listArticle4 = yiLiaoUtile.findArticleImgAndName(request,
				listArt);
		pageBean.setList(listArticle4);
		request.setAttribute("pageBean", pageBean);
		request.setAttribute("url1", "findColthType");
		request.setAttribute("url", "findColthType");
		request.setAttribute("Ctype", pageBean.getTypeId());
		return "frontEnd_manage/front_bootstrap/shop_left_sidebar";
	}
	/**按日期排序*/
	@RequestMapping("/findOrderByTypeSecondDate")
	public String findOrderByTypeSecondDate(HttpServletRequest request,
			PageBeanUtil pageBean,String typeId) throws Exception {
		/** 医疗器械一级分类查询 */
		List<TypeExpand> listType = typeService
				.findIdAndTypeNmae(typeId);
		request.setAttribute("listType", listType);
		/** 医疗器械查询商品图片和商品名称 */
		pageBean.setParentId(typeId);
		List<String> listparentId=articleService.findArticleTypeIdSecond(pageBean);
		String parentId;
		if(listparentId.size()!=0){
			 parentId=listparentId.get(0);
		}else{
		 parentId=typeId;
		}
		YiLiaoUtile yiLiaoUtile = new YiLiaoUtile();
		List<Article> list = articleService
				.findArticleImgAndName(parentId);
		List<Article> listArticle = yiLiaoUtile.findArticleImgAndName(request,
				list);
		request.setAttribute("listArticle", listArticle);
		List<Article> list1 = articleService.findArticleImgAndName("zuixin");
		List<Article> listArticle1 = yiLiaoUtile.findArticleImgAndName(request,
				list1);
		request.setAttribute("listArticle1", listArticle1);
		List<ArticleExpand> list2 = articleService
				.findArticleBuyNumberAndMedicle(typeId);
		List<ArticleExpand> listArticle2 = yiLiaoUtile.findArticleImgAndName(
				request, list2);
		request.setAttribute("listArticle2", listArticle2);
		int page = pageBean.getPage();
		int sequence = pageBean.getSequence();
		int limitPage = pageBean.getLimitPage();
		pageBean = articleService.findOrderByTypeSecondDate(page,
				sequence, limitPage,typeId);
		List<Article> listArt = pageBean.getList();
		List<Article> listArticle4 = yiLiaoUtile.findArticleImgAndName(request,
				listArt);
		pageBean.setList(listArticle4);
		request.setAttribute("url1", "findColthType");
		request.setAttribute("url", "findOrderByTypeSecondDate");
		request.setAttribute("pageBean", pageBean);
		request.setAttribute("Ctype", pageBean.getTypeId());
		return "frontEnd_manage/front_bootstrap/shop_left_sidebar";
	}
	/**按人气排序*/
	@RequestMapping("/findOrderByTypePop")
	public String findOrderByTypePop(HttpServletRequest request,
			PageBeanUtil pageBean,String typeId) throws Exception {
		/** 医疗器械一级分类查询 */
		List<TypeExpand> listType = typeService
				.findIdAndTypeNmae(typeId);
		request.setAttribute("listType", listType);
		/** 医疗器械查询商品图片和商品名称 */
		pageBean.setParentId(typeId);
		List<String> listparentId=articleService.findArticleTypeIdSecond(pageBean);
		String parentId;
		if(listparentId.size()!=0){
			 parentId=listparentId.get(0);
		}else{
		 parentId=typeId;
		}
		YiLiaoUtile yiLiaoUtile = new YiLiaoUtile();
		List<Article> list = articleService
				.findArticleImgAndName(parentId);
		List<Article> listArticle = yiLiaoUtile.findArticleImgAndName(request,
				list);
		request.setAttribute("listArticle", listArticle);
		List<Article> list1 = articleService.findArticleImgAndName("zuixin");
		List<Article> listArticle1 = yiLiaoUtile.findArticleImgAndName(request,
				list1);
		request.setAttribute("listArticle1", listArticle1);
		List<ArticleExpand> list2 = articleService
				.findArticleBuyNumberAndMedicle(typeId);
		List<ArticleExpand> listArticle2 = yiLiaoUtile.findArticleImgAndName(
				request, list2);
		request.setAttribute("listArticle2", listArticle2);
		int page = pageBean.getPage();
		int sequence = pageBean.getSequence();
		int limitPage = pageBean.getLimitPage();
		pageBean = articleService.findOrderByTypePop(page,
				sequence, limitPage,typeId);
		List<Article> listArt = pageBean.getList();
		List<Article> listArticle4 = yiLiaoUtile.findArticleImgAndName(request,
				listArt);
		pageBean.setList(listArticle4);
		request.setAttribute("url", "findOrderByTypePop");
		request.setAttribute("url1", "findColthType");
		request.setAttribute("pageBean", pageBean);
		return "frontEnd_manage/front_bootstrap/shop_left_sidebar";
	}
	/**按价格排序*/
	@RequestMapping("/findOrderByArticlePrice")
	public String findOrderByArticlePrice(HttpServletRequest request,
			PageBeanUtil pageBean,String typeId) throws Exception {
		/** 医疗器械一级分类查询 */
		List<TypeExpand> listType = typeService
				.findIdAndTypeNmae(typeId);
		request.setAttribute("listType", listType);
		/** 医疗器械查询商品图片和商品名称 */
		pageBean.setParentId(typeId);
		List<String> listparentId=articleService.findArticleTypeIdSecond(pageBean);
		String parentId;
		if(listparentId.size()!=0){
			 parentId=listparentId.get(0);
		}else{
		 parentId=typeId;
		}
		YiLiaoUtile yiLiaoUtile = new YiLiaoUtile();
		List<Article> list = articleService
				.findArticleImgAndName(parentId);
		List<Article> listArticle = yiLiaoUtile.findArticleImgAndName(request,
				list);
		request.setAttribute("listArticle", listArticle);
		List<Article> list1 = articleService.findArticleImgAndName("zuixin");
		List<Article> listArticle1 = yiLiaoUtile.findArticleImgAndName(request,
				list1);
		request.setAttribute("listArticle1", listArticle1);
		List<ArticleExpand> list2 = articleService
				.findArticleBuyNumberAndMedicle(typeId);
		List<ArticleExpand> listArticle2 = yiLiaoUtile.findArticleImgAndName(
				request, list2);
		request.setAttribute("listArticle2", listArticle2);
		int page = pageBean.getPage();
		int sequence = pageBean.getSequence();
		int limitPage = pageBean.getLimitPage();
		pageBean = articleService.findOrderByArticlePrice(page, sequence,
				limitPage,typeId);
		List<Article> listArt = pageBean.getList();
		List<Article> listArticle4 = yiLiaoUtile.findArticleImgAndName(request,
				listArt);
		pageBean.setList(listArticle4);
		if (sequence == 3) {
			request.setAttribute("url", "findOrderByTypeSecondDate");
		} else {
			request.setAttribute("url", "findOrderByArticlePrice");
		}
		request.setAttribute("url1", "findColthType");
		request.setAttribute("pageBean", pageBean);
		request.setAttribute("Ctype", pageBean.getTypeId());
		return "frontEnd_manage/front_bootstrap/shop_left_sidebar";
	}
	

	/**
	 * 按价格范围查找商品
	 * 
	 * @throws Exception
	 */
	@RequestMapping("/findTitlePriceScope")
	public String findTitlePriceScope(HttpServletRequest request,
			PageBeanUtil pageBean,String typeId) throws Exception {
		/** 医疗器械一级分类查询 */
		List<TypeExpand> listType = typeService
				.findIdAndTypeNmae(typeId);
		request.setAttribute("listType", listType);
		/** 医疗器械查询商品图片和商品名称 */
		YiLiaoUtile yiLiaoUtile = new YiLiaoUtile();
		pageBean.setParentId(typeId);
		List<String> listparentId=articleService.findArticleTypeIdSecond(pageBean);
		String parentId;
		if(listparentId.size()!=0){
			 parentId=listparentId.get(0);
		}else{
		 parentId=typeId;
		}
		List<Article> list = articleService
				.findArticleImgAndName(parentId);
		List<Article> listArticle = yiLiaoUtile.findArticleImgAndName(request,
				list);
		request.setAttribute("listArticle", listArticle);
		List<Article> list1 = articleService.findArticleImgAndName("zuixin");
		List<Article> listArticle1 = yiLiaoUtile.findArticleImgAndName(request,
				list1);
		request.setAttribute("listArticle1", listArticle1);
		List<ArticleExpand> list2 = articleService
				.findArticleBuyNumberAndMedicle(typeId);
		List<ArticleExpand> listArticle2 = yiLiaoUtile.findArticleImgAndName(
				request, list2);
		request.setAttribute("listArticle2", listArticle2);
		int page = pageBean.getPage();
		int limitPage = pageBean.getLimitPage();
		double minPrice = pageBean.getMin_price();
		double maxPrice = pageBean.getMax_price();
		pageBean = articleService.findTitlePriceScope(page, limitPage, minPrice,
				maxPrice,typeId);
		List<Article> listArt = pageBean.getList();
		List<Article> listArticle5 = yiLiaoUtile.findArticleImgAndName(request,
				listArt);
		pageBean.setList(listArticle5);
		request.setAttribute("url", "findTitlePriceScope");
		request.setAttribute("url1", "findColthType");
		request.setAttribute("Ctype", pageBean.getTypeId());
		request.setAttribute("pageBean", pageBean);
		return "frontEnd_manage/front_bootstrap/shop_left_sidebar";
	}
	
}
