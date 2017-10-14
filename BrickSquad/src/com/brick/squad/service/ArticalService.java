package com.brick.squad.service;

import java.util.List;

import com.brick.squad.pojo.Article;

public interface ArticalService {
	/**
	 * 
	 * @param id
	 * @return 返回商品列表
	 */
	
	public List<Article> findArticleById(String id)throws Exception;
	
	public void insertArticleById(String id)throws Exception;
	
	public void deleteArticleById(String id)throws Exception;
	
	public void updateArticleById(String id)throws Exception;
}
