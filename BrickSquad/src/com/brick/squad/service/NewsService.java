package com.brick.squad.service;

import java.util.Date;
import java.util.List;

import com.brick.squad.pojo.News;
import com.brick.squad.util.Pagination;

public interface NewsService {

	public void addNews(String id,String userId,String content,String imagePath,Date postTime);

	public void deleteNews(String id);

	public void updateNews(String userId,String content);

	public List<News> findNews(String content);
	/**
	 * 查询新闻信息总数
	 * */
	public Integer findNewsCount()throws Exception;
	//新闻分页查询
	public String newsPagination(Pagination pagination);
	/**
	 * 添加新闻消息
	 * */
	public void insertNews(News news)throws Exception;

}
