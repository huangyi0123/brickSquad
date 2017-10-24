package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.pojo.Article;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;

public interface ArticleMapper {
	/**
	 * 返回商品表
	 * @return 
	 */
	public Article findArticleById(String id);
	
	public void insertArticle(Article article);
	
	public void deleteArticleById(String id);
	
	public void updateArticleById(Article article);
	
	public List<Article> articlePagination(Pagination pagination);
	
	public int findArticleAllCount();
	/**
	 * 查询商品信息:根据所需字段
	 * */
	public List<Select> findArticle();

	public List<Article> findAllArticle();
}

