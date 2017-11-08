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

	/***
	 * 医疗器械查询商品信息
	 */
	public List<Article> findArticleImgAndName(String typeId)throws Exception;

	/**
	 * 获取商品订单数量
	 */
	public List<ArticleExpand> findArticleBuyNumber();
	/**
<<<<<<< HEAD
	 * 医疗器械类获取商品订单数量
	 * */
	public List<ArticleExpand> findArticleBuyNumberAndMedicle(String parentId)throws Exception;
/*
	 * 根据商品ID在订单明细表中查询该商品的销售总量
	 * @param id
	 * @return
	 */
	public int selectArticleSalesNumberTotalById(String id);
}
