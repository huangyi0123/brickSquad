package com.brick.squad.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.expand.ArticleExpand;
import com.brick.squad.expand.TypeExpand;
import com.brick.squad.pojo.Article;
import com.brick.squad.pojo.Type;
import com.brick.squad.service.ArticalService;
import com.brick.squad.service.TypeService;
import com.brick.squad.util.PageBeanUtil;
import com.brick.squad.util.YiLiaoUtile;

@Controller
@RequestMapping("/MedicalInstruments")
public class MedicalInstrumentsController {
	@Autowired
	@Qualifier("articleService")
	private ArticalService articleService;
	@Autowired
	@Qualifier("typeService")
	private TypeService typeService;

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
		request.setAttribute("url", "toShop_left_sidebar");
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
	public String addCartMedicalInstruments(String id){
		
		return null;
	}

}
