package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.expand.ArticleExpand;
import com.brick.squad.expand.NewsArticle;
import com.brick.squad.pojo.Article;
import com.brick.squad.util.PageBeanUtil;
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
	
	public int findArticleAllCount(Pagination pagination);
	/**
	 * 查询商品信息:根据所需字段
	 * */
	public List<Select> findArticle();

	public List<ArticleExpand> findAllArticle();
	public String findAllTypeAndBusiness();
	
	public ArticleExpand findArticleAndTypeAndBusiness(String id);
	/***
	 * 医疗器械查询商品信息
	 */
	public List<Article> findArticleImgAndName(String typeId);

	
	
	
	/**
	 * 医疗器械类获取商品订单数量
	 * */
	public List<ArticleExpand> findArticleBuyNumberAndMedicle(String parentId);

/*
	 * 根据商品ID在订单明细表中查询该商品的销售总量
	 * @param id
	 * @return
	 */
	public int selectArticleSalesNumberTotalById(String id);
	/**
	 * 医疗器械类获取商品总数
	 * */
	public Integer findCountMedicalInstruments(String parentId);
	/**
	 * 医疗器械类获所有商品
	 * */
	public List<Article> findAllMedicalInstruments(PageBeanUtil pageBean);
	/**医疗器械商品排序*/
	public List<Article> findOrderByMedicalInstruments(PageBeanUtil pageBean);
/*	public PageBeanUtil<Article> findArtivleAndMedicalInstrumentsPage(int page);*/
/*
	 * 根据商品ID在评论表中查询评论总量
	 * @param id
	 * @return
	 */
	public int selectArticleRatedTotalById(String id);
	
	/**
	 * 获取商品订单数量
	 */
	public List<ArticleExpand> findArticleBuyNumber();
	/**
	 * 获取最新添加的商品
	 */
	public List<ArticleExpand> findFrontTime();
	/**
	 * 获取最新商品
	 * @param take 需要获取商品条数
	 * @return  最新商品列表
	 */
	public List<NewsArticle> findNewsArticleByIndex(int take);

}

