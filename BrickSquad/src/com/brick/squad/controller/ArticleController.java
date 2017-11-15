package com.brick.squad.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.brick.squad.expand.ArticleExpand;
import com.brick.squad.pojo.Article;
import com.brick.squad.service.ArticleService;
import com.brick.squad.util.Pagination;

@RequestMapping("/article")
@Controller
public class ArticleController {

	@Autowired
	@Qualifier("articleService")
	private ArticleService articleService;

	@RequestMapping("/toArticleList")
	public String toArticleList() {
		return "backstage_managed/jsp/article/article_list";

	}

	@RequestMapping("/getArticleList")
	@ResponseBody
	public String getArticleList(HttpServletRequest request,int pSize, int cPage, String keyword) {

		Pagination pagination = new Pagination();
		pagination.setKeyword(keyword);
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		pagination.setUserId(request.getSession().getAttribute("userId").toString());
		return articleService.articlePagination(pagination);
	}

	@RequestMapping("/toAddArticle")
	public String toAddArticle(HttpServletRequest request, String id)
			throws Exception {
		if (id != null) {
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updateArticleById");
			Article article = articleService.findArticleById(id);
			String imgpath = article.getImage();
			imgpath = "resource/image/articleImg/" + imgpath + "/";
			imgpath = request.getSession().getServletContext()
					.getRealPath(imgpath);
			List<String> imgpathlList = new ArrayList<String>();
			File file = new File(imgpath);
			File[] files = file.listFiles();
			for (File file2 : files) {
				imgpathlList.add(file2.getName());
			}
			request.setAttribute("images", imgpathlList);
			request.setAttribute("article", article);
		} else {
			request.setAttribute("url", "addArticle");
			request.setAttribute("msg", "添加");
		}

		return "backstage_managed/jsp/article/add_article";

	}

	@RequestMapping("/addArticle")
	public String addArticle(@Validated Article article, BindingResult result,
			@RequestParam MultipartFile[] files, HttpServletRequest request)
			throws Exception {
		if (result.hasErrors()) {
			List<ObjectError> errors = result.getAllErrors();
			request.setAttribute("errors", errors);
			request.setAttribute("url", "addArticle");
			request.setAttribute("msg", "添加");
			return "backstage_managed/jsp/article/add_article";
		}
		if (!(files[0].isEmpty())) {
			// 先插入数据，得到UUID作为图片路径文件夹
			articleService.insertArticleById(article);
			// 把当前商品的所有图片存到一个文件夹下，文件夹命名为商品id
			String newPath = article.getId();
			// 获取图片要保存的到的服务器路径
			String realPath = "resource/image/articleImg/" + newPath + "/";
			String path = request.getSession().getServletContext()
					.getRealPath(realPath);
			// 初始化文件名的序号
			int i = 1;
			for (MultipartFile multipartFile : files) {
				// 获取当前文件名
				String filName = multipartFile.getOriginalFilename();
				// 获取当前文件的后缀名
				String fileSuffixName = filName.substring(filName
						.lastIndexOf("."));
				// 给文件重新命名,序号+文件后缀名
				String fileNewName = i + fileSuffixName;
				// 序号累加
				i++;
				//  创建文件类型对象: 
				File file = new File(path, fileNewName);
				if (!file.exists()) {
					file.mkdirs();
				}
				multipartFile.transferTo(file);

			}
		} else {
			List<ObjectError> errors = new ArrayList<>();
			ObjectError oError = new ObjectError("nullImg", "请选择图片");
			errors.add(oError);
			request.setAttribute("errors", errors);
			request.setAttribute("url", "addArticle");
			request.setAttribute("msg", "添加");
			return "backstage_managed/jsp/article/add_article";
		}

		return "backstage_managed/jsp/article/article_list";
	}
	@RequestMapping("/deleteArticleById")
	@ResponseBody
	public String deleteArticleById(String id, HttpServletRequest request)
			throws Exception {
		articleService.deleteArticleById(id, request);
		return "success";
	}
	@RequestMapping("/updateArticleById")
	public String updateArticleById(@Validated Article article,
			BindingResult result, @RequestParam MultipartFile[] files,
			HttpServletRequest request) throws Exception {
		if (result.hasErrors()) {
			List<ObjectError> errors = result.getAllErrors();
			request.setAttribute("errors", errors);
			request.setAttribute("msg", "修改");
			String imgpath = article.getImage();
			imgpath = "resource/image/articleImg/" + imgpath + "/";
			imgpath = request.getSession().getServletContext()
					.getRealPath(imgpath);
			List<String> imgpathlList = new ArrayList<String>();
			File file = new File(imgpath);
			File[] filess = file.listFiles();
			for (File file2 : filess) {
				imgpathlList.add(file2.getName());
			}
			request.setAttribute("images", imgpathlList);
			request.setAttribute("url", "updateArticleById");
			article = articleService.findArticleById(article.getId());
			request.setAttribute("article", article);
			return "backstage_managed/jsp/article/add_article";
		}
		if (!(files[0].isEmpty())) {
			// 把当前商品的所有图片存到一个文件夹下，文件夹命名为商品id
			String newPath = article.getId();
			// 获取图片要保存的到的服务器路径
			String realPath = "resource/image/articleImg/" + newPath + "/";
			String path = request.getSession().getServletContext()
					.getRealPath(realPath);

			File f = new File(path);
			if (f.exists()) {

				String[] tempList = f.list();
				for (int i = 0; i < tempList.length; i++) {
					File file = new File(path + "/" + tempList[i]);
					if (file.isFile()) {
						file.delete();
					}
				}

			}
			// 初始化文件名的序号
			int i = 1;
			for (MultipartFile multipartFile : files) {
				// 获取当前文件名
				String filName = multipartFile.getOriginalFilename();
				// 获取当前文件的后缀名
				String fileSuffixName = filName.substring(filName
						.lastIndexOf("."));
				// 给文件重新命名,序号+文件后缀名
				String fileNewName = i + fileSuffixName;
				// 序号累加
				i++;

				//  创建文件类型对象: 
				File file = new File(path, fileNewName);

				if (!file.exists()) {
					file.mkdirs();
				}
				multipartFile.transferTo(file);

			}
		}
		article.setImage(article.getId());
		articleService.updateArticleById(article);
		return "backstage_managed/jsp/article/article_list";
	}

	@RequestMapping("/findAllArticle")
	@ResponseBody
	public String findAllArticle() {
		return articleService.findAllArticle();
	}

	@RequestMapping("/findArticleById")
	public String findArticleById(HttpServletRequest request, String id) {
		ArticleExpand articleExpand = articleService
				.findArticleAndTypeAndBusiness(id);
		request.setAttribute("articleExpand", articleExpand);
		String imgpath = articleExpand.getImage();
		imgpath = "resource/image/articleImg/" + imgpath + "/";
		imgpath = request.getSession().getServletContext().getRealPath(imgpath);
		List<String> imgpathlList = new ArrayList<String>();
		File file = new File(imgpath);
		File[] filess = file.listFiles();
		for (File file2 : filess) {
			imgpathlList.add(file2.getName());
		}
		request.setAttribute("images", imgpathlList);
		return "backstage_managed/jsp/article/search_article";
	}

	@RequestMapping("/findAllTypeAndBusiness")
	@ResponseBody
	public String findAllTypeAndBusiness() {
		return articleService.findAllTypeAndBusiness();

	}

	@RequestMapping("/findArticleBuyNumber")
	public String findArticleBuyNumber(HttpServletRequest request) {
		return "frontEnd_manage/front_bootstrap/deals";

	}

}
