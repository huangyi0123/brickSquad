package com.brick.squad.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.brick.squad.expand.ArticleExpand;
import com.brick.squad.expand.NewsArticle;
import com.brick.squad.service.ArticalService;
import com.brick.squad.util.PageBeanUtil;
import com.brick.squad.util.PageUtil;

@Controller
@RequestMapping("/new_deals")
public class NewDealsController {
	@Autowired
	@Qualifier("articleService")
	private ArticalService articleService;

	@RequestMapping("/tonew_deals")
	public String findFrontTime(HttpServletRequest request){
		List<NewsArticle> NewsArticleList =articleService.findFrontTime();

		for (NewsArticle item : NewsArticleList) {
			
			String path = request.getSession().getServletContext().getRealPath("resource/image/articleImg/"+item.getImage());
		File file = new File(path);
		System.err.println(path);
		if(item.getImage()==null || item.getImage().equals("") ){
			}
		else {
			File[] file2 =file.listFiles();
			if(file2==null||file2.length==0){
				
			}else {
				for (int i = 0; i < file2.length; i++) {
					if (file2[i]!=null) {
						item.setImage("resource/image/articleImg/"
								+ item.getImage() + "/"
								+ file2[i].getName());
						
						break;
					}
				}
			}
		  }
		}
		
		request.setAttribute("NewsArticleList", NewsArticleList);
		return "frontEnd_manage/front_bootstrap/new_deals";	
	}
	
	@RequestMapping("/findFrontTimeNumber")
	public String findFrontTimeNumber(HttpServletRequest request,PageUtil pageBean){
		int page = pageBean.getPage();
		int pageSize=pageBean.getPageSize();
		int startRow=pageBean.getStartRow();
		request.setAttribute("page", page);
		request.setAttribute("pageSize", pageSize);
		request.setAttribute("startRow", startRow);
		return "frontEnd_manage/front_bootstrap/new_deals";	
	}
	
}
