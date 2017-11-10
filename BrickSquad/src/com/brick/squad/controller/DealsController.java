package com.brick.squad.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.brick.squad.expand.ArticleExpand;
import com.brick.squad.service.ArticalService;

@Controller
@RequestMapping("/deals")
public class DealsController {
	@Autowired
	@Qualifier("articleService")
	private ArticalService articleService;

	@RequestMapping("/todeals")
	public String deals(HttpServletRequest request) {
		List<ArticleExpand> articleExpandList = articleService
				.findArticleBuyNumber();

		for (ArticleExpand item : articleExpandList) {
			String path = request
					.getSession()
					.getServletContext()
					.getRealPath("resource/image/articleImg/" + item.getImage());
			File file = new File(path);
			if (item.getImage() == null || item.getImage().equals("")) {

			} else {

				File[] files = file.listFiles();
				if (files.length == 0) {

				} else {
					for (int i = 0; i < files.length; i++) {
						if (files[i] != null) {
							item.setImage("resource/image/articleImg/"
									+ item.getImage() + "/"
									+ files[i].getName());

							break;
						}
					}
				}
			}

		}

		request.setAttribute("articleExpandList", articleExpandList);
		return "frontEnd_manage/front_bootstrap/deals";
	}

}
