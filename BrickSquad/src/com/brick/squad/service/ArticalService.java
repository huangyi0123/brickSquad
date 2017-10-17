package com.brick.squad.service;

import java.util.List;

import com.brick.squad.pojo.Article;
import com.brick.squad.util.Pagination;

public interface ArticalService {
	/**
	 * 
	 * @param id
	 * @return 返回商品列表
	 */
	
	public Article findArticleById(String id) throws Exception;
	
	public void insertArticleById(Article article)throws Exception;
	
	public void deleteArticleById(String id)throws Exception;
	
	public void updateArticleById(Article article)throws Exception;
	
	public List<Article> ArticlePagination(Pagination pagination);

	public int findArticleAllCount();
}
