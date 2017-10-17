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
	
	public List<News> newsPagination(Pagination pagination);

}
