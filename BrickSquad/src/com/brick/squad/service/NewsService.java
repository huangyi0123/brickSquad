package com.brick.squad.service;

import java.util.Date;
import java.util.List;

import com.brick.squad.expand.NewsExpand;
import com.brick.squad.pojo.News;
import com.brick.squad.util.Pagination;

public interface NewsService {

	public void addNews(String id, String userId, String content,
			String imagePath, Date postTime);

	public void deleteNews(String id);

	public void updateNews(String userId, String content);

	public List<News> findNews(String content);

	/**
	 * 查询新闻信息总数
	 * */
	public Integer findNewsCount() throws Exception;

	// 新闻分页查询
	public String newsPagination(Pagination pagination);

	/**
	 * 添加新闻消息
	 * */
	public void insertNews(News news) throws Exception;

	/**
	 * 根据news的id修改信息
	 * */
	public void updateNewsById(News news) throws Exception;

	/**
	 * 根据新闻ID查询信息
	 * */
	public News findNewsById(String id) throws Exception;

	/**
	 * 获取新闻列表
	 * 
	 * @return
	 */
	public String findNewsList();
	/**
	 * 根据id查询新闻详情
	 * @param id id
	 * @return 新闻详情
	 */
	public NewsExpand findNewsExpandById(String id);
}
