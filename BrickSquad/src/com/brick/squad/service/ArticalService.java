package com.brick.squad.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.brick.squad.expand.ArticleExpand;
import com.brick.squad.pojo.Article;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;

public interface ArticalService {
	/**
	 * 
	 * @param id
	 * @return 返回商品列表
	 */
	
	public Article findArticleById(String id) throws Exception;
	
	public void insertArticleById(Article article)throws Exception;
	
	public void deleteArticleById(String id,HttpServletRequest request)throws Exception;
	
	public void updateArticleById(Article article)throws Exception;
	
	public String articlePagination(Pagination pagination);

	//public int findArticleAllCount();
	/**
	 * 查询商品信息:根据所需字段
	 * */
	public String findArticle()throws Exception;
	
	public String findAllArticle();
	
	
	
	public String findAllTypeAndBusiness();
	
	public ArticleExpand findArticleAndTypeAndBusiness(String id);
}
