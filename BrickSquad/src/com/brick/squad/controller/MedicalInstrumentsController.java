package com.brick.squad.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.brick.squad.pojo.Article;
import com.brick.squad.pojo.Type;
import com.brick.squad.service.ArticalService;
import com.brick.squad.service.TypeService;
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
	 * @throws Exception 
	 */
	@RequestMapping("/toShop_left_sidebar")
	public String toShop_left_sidebar(HttpServletRequest request) throws Exception {
		/**医疗器械一级分类查询*/
		List<Type> listType=typeService.findIdAndTypeNmae("yiliaoqixie");
		request.setAttribute("listType", listType);
		/**医疗器械查询商品图片和商品名称*/
		List<Article> list=articleService.findArticleImgAndName("laorenjianfuyongpin");
		List<Article> list1=articleService.findArticleImgAndName("zuixin");
		YiLiaoUtile yiLiaoUtile=new YiLiaoUtile();
		List<Article> listArticle= yiLiaoUtile.findArticleImgAndName(request, list);
		List<Article> listArticle1= yiLiaoUtile.findArticleImgAndName(request, list1);
		request.setAttribute("listArticle", listArticle);
		request.setAttribute("listArticle1", listArticle1);
		
		return "frontEnd_manage/front_bootstrap/shop_left_sidebar";
	}
}
