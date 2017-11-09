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
import com.brick.squad.service.ArticalService;

@Controller
@RequestMapping("/new_deals")
public class NewDealsController {
	@Autowired
	@Qualifier("articalService")
	private ArticalService articalService;

	@RequestMapping("/tonew_deals")
	public String findFrontTime(HttpServletRequest request){
		List<ArticleExpand> articleExpandList =articalService.findFrontTime();

		for (ArticleExpand item : articleExpandList) {
			String path = request.getSession().getServletContext().getRealPath("resource/image/articleImg"+item.getImage());
		File file = new File(path);
		if(item.getImage()==null || item.getImage().equals("") ){
			}
		else {
			File[] file2 =file.listFiles();
			if(file2.length==0){
				
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
		
		request.setAttribute("articleExpandList", articleExpandList);
		return "frontEnd_manage/front_bootstrap/new_deals";	
	}
}
