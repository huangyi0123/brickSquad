package com.brick.squad.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.brick.squad.expand.ArticleExpand;
import com.brick.squad.pojo.Article;
import com.brick.squad.util.PageBeanUtil;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;

public interface ArticalService {
	/**
	 * 
	 * @param id
	 * @return 返回商品列表
	 */

	public Article findArticleById(String id) throws Exception;

	public void insertArticleById(Article article) throws Exception;

	public void deleteArticleById(String id, HttpServletRequest request)
			throws Exception;

	public void updateArticleById(Article article) throws Exception;

	public String articlePagination(Pagination pagination);

	// public int findArticleAllCount();
	/**
	 * 查询商品信息:根据所需字段
	 * */
	public String findArticle() throws Exception;

	public String findAllArticle();

	public String findAllTypeAndBusiness();

	public ArticleExpand findArticleAndTypeAndBusiness(String id);

	/***
	 * 医疗器械查询商品信息
	 */
	public List<Article> findArticleImgAndName(String typeId) throws Exception;

	/**
	 * 获取商品订单数量
	 */
	public List<ArticleExpand> findArticleBuyNumber();

	/**
	 * 医疗器械类获取商品订单数量
	 * */
	public List<ArticleExpand> findArticleBuyNumberAndMedicle(String parentId)
			throws Exception;

	/*
	 * 根据商品ID在订单明细表中查询该商品的销售总量
	 * 
	 * @param id
	 * 
	 * @return
	 */
	public int selectArticleSalesNumberTotalById(String id);

	/**
	 * 医疗器械类获取商品总数
	 * */
	public Integer findCountMedicalInstruments(String parentId)
			throws Exception;

	/**
	 * 医疗器械类获所有商品
	 * */
	/*
	 * public List<Article> findAllMedicalInstruments(PageBeanUtil
	 * pageBean)throws Exception;
	 */

	public PageBeanUtil<Article> findArtivleAndMedicalInstrumentsPage(int page)
			throws Exception;

	public PageBeanUtil<Article> findArtivleAndMedicalInstrumentsPage(int page,
			int limitPage) throws Exception;

	/*
	 * 根据商品ID在评论表中查询评论总量
	 * 
	 * @param id
	 * 
	 * @return
	 */
	public int selectArticleRatedTotalById(String id);

	/**
	 * 获取商品首页数据
	 * 
	 * @return 数据集合
	 */
	public Map<String, List<Object>> shopIndex();
}
