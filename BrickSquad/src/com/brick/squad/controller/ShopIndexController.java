package com.brick.squad.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.expand.ArticleExpand;
import com.brick.squad.expand.NewsArticle;
import com.brick.squad.expand.SecKill;
import com.brick.squad.expand.TypeExpand;
import com.brick.squad.pojo.Type;
import com.brick.squad.pojo.User;
import com.brick.squad.service.ArticleService;
import com.brick.squad.service.ShopActivitiesService;
import com.brick.squad.service.TypeService;
import com.brick.squad.util.COS;

@Controller
@RequestMapping("/shopIndex")
public class ShopIndexController {
	@Autowired
	@Qualifier("typeService")
	private TypeService typeService;
	@Autowired
	@Qualifier("shopActivitiesService")
	private ShopActivitiesService shopActivitiesService;
	@Autowired
	@Qualifier("articleService")
	private ArticleService articalService;

	@RequestMapping("/toShop")
	public String toShop(HttpServletRequest request) throws Exception {
		User user = (User) request.getSession().getAttribute("user");
		String userId = user == null ? null : user.getId();
		Map<String, Object> map = articalService.shopIndex(userId);

		request.setAttribute("url", "toShop");
		List<NewsArticle> newsArticles = (List<NewsArticle>) map
				.get("aNewsArticles");
		List<NewsArticle> newsArticlesTop = (List<NewsArticle>) map
				.get("aNewsArticlesTop");
		List<NewsArticle> rArticles = (List<NewsArticle>) map.get("rArticles");
		List<NewsArticle> rArticlesTop = (List<NewsArticle>) map
				.get("rArticlesTop");
		List<SecKill> secKills = (List<SecKill>) map.get("secKills");
		List<NewsArticle> myArticles = (List<NewsArticle>) map.get("myArticle");
		List<NewsArticle> myArticlesTop = (List<NewsArticle>) map
				.get("myArticleTop");
		for (SecKill item : secKills) {
			String path = request
					.getSession()
					.getServletContext()
					.getRealPath("resource/image/articleImg/" + item.getImage());
			File file = new File(path);
			File[] files = file.listFiles();
			if (files != null && files.length > 0) {
				item.setImage("resource/image/articleImg/" + item.getImage()
						+ "/" + files[0].getName());
			} else {
				COS cos = new COS();
				cos.setBucketName("bricksquad");
				cos.setRegion("sh");
				String cospath = "/articleList/" + item.getId() + "/";
				List<String> list = cos.listFolder(cospath);
				if (list.size() > 0) {
					item.setImage(list.get(0));
				}
			}
		}
		List<List<NewsArticle>> nList = avgList(getImagePath(request,
				newsArticles));
		List<List<NewsArticle>> rList = avgList(getImagePath(request, rArticles));
		List<List<NewsArticle>> mList = avgList(getImagePath(request,
				myArticles));
		request.setAttribute("aNewsArticles", nList);
		request.setAttribute("aNewsArticlesTop",
				getImagePath(request, newsArticlesTop));
		request.setAttribute("rArticles", rList);
		request.setAttribute("rArticlesTop",
				getImagePath(request, rArticlesTop));
		request.setAttribute("secKills", secKills);

		// 加载商品所有类型,搜索框
		List<Type> listType = typeService.findAllTypeByParentId("splb");
		request.setAttribute("listType", listType);

		request.setAttribute("myArticleTop",
				getImagePath(request, myArticlesTop));
		request.setAttribute("myArticle", mList);
		return "frontEnd_manage/front_bootstrap/index";
	}

	private List<NewsArticle> getImagePath(HttpServletRequest request,
			List<NewsArticle> rArticlesTop) {
		for (NewsArticle item : rArticlesTop) {
			String path = request
					.getSession()
					.getServletContext()
					.getRealPath("resource/image/articleImg/" + item.getImage());
			File file = new File(path);
			File[] files = file.listFiles();
			if (files != null && files.length > 0) {
				item.setImage("resource/image/articleImg/" + item.getImage()
						+ "/" + files[0].getName());
			} else {
				COS cos = new COS();
				cos.setBucketName("bricksquad");
				cos.setRegion("sh");
				String cospath = "/articleList/" + item.getId() + "/";
				List<String> list = cos.listFolder(cospath);
				if (list.size() > 0) {
					item.setImage(list.get(0));
				}
			}
		}
		return rArticlesTop;
	}

	private List<List<NewsArticle>> avgList(List<NewsArticle> newsArticles) {
		List<List<NewsArticle>> list = new ArrayList<List<NewsArticle>>();
		List<NewsArticle> nList1 = new ArrayList<NewsArticle>();
		List<NewsArticle> nList2 = new ArrayList<NewsArticle>();
		List<NewsArticle> nList3 = new ArrayList<NewsArticle>();
		for (int i = 0; i < newsArticles.size(); i++) {
			if (i % 3 == 0) {
				nList1.add(newsArticles.get(i));
			} else if (i % 3 == 1) {
				nList2.add(newsArticles.get(i));
			} else {
				nList3.add(newsArticles.get(i));
			}
		}
		list.add(nList1);
		list.add(nList2);
		list.add(nList3);
		return list;
	}

	@RequestMapping("/getArticleType")
	@ResponseBody
	public String getArticleType(String id) {
		String data = typeService.getArticleType(id);
		return data;
	}

}
