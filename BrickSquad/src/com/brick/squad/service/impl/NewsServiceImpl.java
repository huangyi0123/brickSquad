package com.brick.squad.service.impl;

import java.util.Date;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JsonConfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.expand.NewsExpand;
import com.brick.squad.mapper.NewsMapper;
import com.brick.squad.pojo.News;
import com.brick.squad.service.NewsService;
import com.brick.squad.util.JsonDateValueProcessor;
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
	public void deleteNews(String id) {

		newsMapper.deleteNews(id);

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
		int row = newsMapper.findNewsCount();
		Util<NewsExpand> util = new Util<NewsExpand>();
		String data = util.SplitPage(news, row);
		return data;
	}

	@Override
	public Integer findNewsCount() throws Exception {
		Integer countNews = newsMapper.findNewsCount();
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
        jsonConfig.registerJsonValueProcessor(Date.class, new JsonDateValueProcessor("yyyy-MM-dd"));
		JSONArray jsonArray = JSONArray.fromObject(news,jsonConfig);
		return jsonArray.toString();
	}

	@Override
	public NewsExpand findNewsExpandById(String id) {
		
		return newsMapper.findNewsExpandById(id);
	}
}
