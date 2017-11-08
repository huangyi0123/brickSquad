package com.brick.squad.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.brick.squad.pojo.Article;
import com.brick.squad.service.ArticalService;

@Controller
@RequestMapping("/variableProduct")
public class VariableProductController {
	@Autowired
	@Qualifier("articleService")
	private ArticalService articleService;
	
	/**
	 * 跳转到商品详情页面
	 * 
	 * @param productId
	 *            商品ID
	 * @return 详情页面
	 * @throws Exception 
	 */
	@RequestMapping("/toVariable_product")
	public String toVariable_product(HttpServletRequest request) throws Exception {
		String productId="afdfddacc3bb11e7aca65254002ec43c";
		Article article=new Article();
		article =articleService.findArticleById(productId);
		request.setAttribute("article", article);
		//查询图片路径
		String imgpath=article.getImage();
		imgpath="resource/image/articleImg/"+imgpath+"/";
		imgpath=request.getSession().getServletContext()
		.getRealPath(imgpath);
		List<String> imgpathlList=new ArrayList<String>();
		File file=new File(imgpath);
		File[] files=file.listFiles();
		for (File file2 : files) {
			imgpathlList.add(file2.getName());
		}
		request.setAttribute("images", imgpathlList);
		return "frontEnd_manage/front_bootstrap/variable_product";
	}
}
