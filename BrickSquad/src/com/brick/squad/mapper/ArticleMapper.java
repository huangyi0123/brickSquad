package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.pojo.Article;
import com.brick.squad.util.Pagination;

public interface ArticleMapper {
	/**
	 * 返回商品表
	 * @return 
	 */
	public Article findArticleById(String id);
	
	public void insertArticle(Article article);
	
	public void deleteArticleById(String id);
	
	public void updateArticleById(Article article);
	
	public List<Article> ArticlePagination(Pagination pagination);
	

}

