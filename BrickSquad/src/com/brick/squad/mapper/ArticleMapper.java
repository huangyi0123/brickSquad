package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.pojo.Article;

public interface ArticleMapper {
	/**
	 * 返回商品表
	 */
	public List<Article> findArticleById(String id);
	
	public void insertArticleById(String id);
	
	public void deleteArticleById(String id);
	
	public void updateArticleById(String id);
}
