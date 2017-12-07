package com.brick.squad.service.impl;

import java.util.Date;
import java.util.List;

import javax.json.JsonObject;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.expand.NewsExpand;
import com.brick.squad.expand.NutritionalDiet;
import com.brick.squad.mapper.NewsMapper;
import com.brick.squad.pojo.News;
import com.brick.squad.pojo.Type;
import com.brick.squad.service.NewsService;
import com.brick.squad.util.COS;
import com.brick.squad.util.GridManagerList;
import com.brick.squad.util.JsonDateValueProcessor;
import com.brick.squad.util.PageBeanUtil;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Util;

/**
 * 新闻表 增删改查
 * 
 * @author Luyujing
 * 
 */
public class NewsServiceImpl implements NewsService {
	@Autowired
	@Qualifier("newsMapper")
	private NewsMapper newsMapper;

	/*
	 * private File upload;//上传图片 private String uploadFileName;//接收图片上传的文件名
	 * private String uploadContextType;//接收图片上传的文件的MIME类型
	 * 
	 * public void setUpload(File upload) { this.upload = upload; }
	 * 
	 * public void setUploadFileName(String uploadFileName) {
	 * this.uploadFileName = uploadFileName; }
	 * 
	 * public void setUploadContextType(String uploadContextType) {
	 * this.uploadContextType = uploadContextType; }
	 */

	// 添加新闻
	public void addNews(String id, String userId, String content,
			String imagePath, Date postTime) {
		newsMapper.addNews(id, userId, content, imagePath, postTime);

	}

	// 根据新闻ID删除新闻
	public void deleteNews(String id) throws Exception {
		News news = newsMapper.findNewsById(id);
		if (news != null) {
			COS cos = new COS();
			cos.setBucketName("bricksquad");
			cos.setRegion("sh");
			cos.deleteAll("/news/" + news.getImagePath() + "/");
			newsMapper.deleteNews(id);
		}

	}

	// 根据编辑用户ID修改新闻
	public void updateNews(String userId, String content) {

		newsMapper.updateNews(userId, content);

	}

	// 根据新闻内容查询新闻
	public List<News> findNews(String content) {
		return newsMapper.findNews(content);

	}

	// 新闻分页查询
	public String newsPagination(Pagination pagination) {
		List<NewsExpand> news = newsMapper.newsPagination(pagination);
		int row = newsMapper.findNewsCountByPagination(pagination);
		Util<NewsExpand> util = new Util<NewsExpand>();
		String data = util.SplitPage(news, row);
		return data;
	}

	@Override
	public Integer findNewsCount(Pagination pagination) throws Exception {
		Integer countNews = newsMapper.findNewsCount(pagination);
		return countNews;
	}

	@Override
	/**
	 * 添加新闻信息
	 * */
	public void insertNews(News news) throws Exception {
		newsMapper.insertNews(news);
	}

	@Override
	/**
	 * 根据news的ID修改信息
	 * */
	public void updateNewsById(News news) throws Exception {
		newsMapper.updateNewsById(news);
	}

	@Override
	/**
	 * 根据新闻的ID查询用户信息
	 * */
	public News findNewsById(String id) throws Exception {
		News news = newsMapper.findNewsById(id);
		return news;
	}

	@Override
	public String findNewsList() {
		List<News> news = newsMapper.findNewsList();
		JsonConfig jsonConfig = new JsonConfig();
		jsonConfig.registerJsonValueProcessor(Date.class,
				new JsonDateValueProcessor("yyyy-MM-dd"));
		JSONArray jsonArray = JSONArray.fromObject(news, jsonConfig);
		return jsonArray.toString();
	}

	@Override
	public NewsExpand findNewsExpandById(String id) {
		return newsMapper.findNewsExpandById(id);
	}

	@Override
	/**
	 * 乐堡服务生活助手新闻显示
	 * */
	public PageBeanUtil findNewsLeBaoServer(int page3) {
		PageBeanUtil<News> pageBean = new PageBeanUtil<News>();
		if (page3 == 0) {
			page3 = 1;
			// 设置当前页数:
			pageBean.setPage3(page3);

			// 设置每页显示记录数:
			int limit = 3;
			pageBean.setLimitPage3(limit);
			// 设置总记录数:
			int totalCount = 0;
			totalCount = newsMapper.findCountNewsLeBaoServer();
			pageBean.setTotalCount3(totalCount);
			// 设置总页数:
			int totalPage = 0;
			// Math.ceil(totalCount / limit);
			if (totalCount % limit == 0) {
				totalPage = totalCount / limit;
			} else {
				totalPage = totalCount / limit + 1;
			}
			pageBean.setTotalPage3(totalPage);
			// 每页显示的数据集合:
			// 从哪开始:
			int begin = (page3 - 1) * limit;
			pageBean.setBegin3(begin);
			List<News> list = newsMapper.findNewsLeBaoServer(pageBean);
			pageBean.setList(list);
		} else {
			// 设置当前页数:
			pageBean.setPage3(page3);
			// 设置每页显示记录数:
			int limit = 3;
			pageBean.setLimitPage3(limit);
			// 设置总记录数:
			int totalCount = 0;
			totalCount = newsMapper.findCountNewsLeBaoServer();
			pageBean.setTotalCount3(totalCount);
			// 设置总页数:
			int totalPage = 0;
			// Math.ceil(totalCount / limit);
			if (totalCount % limit == 0) {
				totalPage = totalCount / limit;
			} else {
				totalPage = totalCount / limit + 1;
			}
			pageBean.setTotalPage3(totalPage);
			// 每页显示的数据集合:
			// 从哪开始:
			int begin = (page3 - 1) * limit;
			pageBean.setBegin3(begin);
			List<News> list = newsMapper.findNewsLeBaoServer(pageBean);
			pageBean.setList(list);
		}
		return pageBean;
	}

	@Override
	/**
	 * 乐堡服务生活助手新闻显示总记录数
	 * */
	public int findCountNewsLeBaoServer() throws Exception {
		int count = newsMapper.findCountNewsLeBaoServer();
		return count;
	}

	public String NutritionalDietListPagination(Pagination pagination) {
		GridManagerList<NutritionalDiet> nManagerList = new GridManagerList<NutritionalDiet>();
		nManagerList.setData(newsMapper.NutritionalDietList(pagination));
		nManagerList.setTotals(newsMapper.NutritionalDietCount());
		JSONArray jsonArray = JSONArray.fromObject(nManagerList);
		return jsonArray.toString();

	}

	@Override
	public String NutritionalDietInfoById(String id) {
		NutritionalDiet nutritionalDiet = newsMapper.NutritionalDietById(id);
		JsonConfig jsonConfig = new JsonConfig();
		jsonConfig.registerJsonValueProcessor(Date.class,
				new JsonDateValueProcessor("yyyy年MM月dd日"));
		JSONObject jsonObject = JSONObject.fromObject(nutritionalDiet,
				jsonConfig);
		return jsonObject.toString();
	}

	@Override
	/***
	 *  官网首页 ：动态新闻查询，日常新闻 
	 * */
	public String findNewsDaily(String id) throws Exception {
		JsonConfig jsonConfig = new JsonConfig();
		jsonConfig.registerJsonValueProcessor(Date.class,
				new JsonDateValueProcessor("yyyy-MM-dd"));
		JSONArray jsonArray = new JSONArray();
		List<News> list = newsMapper.findNewsDaily(id);
		String data = jsonArray.fromObject(list, jsonConfig).toString();
		return data;
	}

}
