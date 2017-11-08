package com.brick.squad.service.impl;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.expand.ArticleExpand;
import com.brick.squad.mapper.ArticleMapper;
import com.brick.squad.mapper.BusinessMapper;
import com.brick.squad.mapper.TypeMapper;
import com.brick.squad.pojo.Article;
import com.brick.squad.pojo.Business;
import com.brick.squad.pojo.Reply;
import com.brick.squad.pojo.Type;
import com.brick.squad.service.ArticalService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;
import com.brick.squad.util.Util;
@Transactional
public class ArticleServiceImpl implements ArticalService{
	@Autowired
	@Qualifier("articleMapper")
	private ArticleMapper articleMapper;
	
	@Autowired
	@Qualifier("typeMapper")
	private TypeMapper typeMapper;
	
	@Autowired
	@Qualifier("businessMapper")
	private BusinessMapper businessMapper;
	
	@Override
	public Article findArticleById(String id) {
		// TODO Auto-generated method stub
	    	
			return articleMapper.findArticleById(id);
	}
	@Override
	public void insertArticleById(Article article) {
		// TODO Auto-generated method stub
		articleMapper.insertArticle(article);
	}
	@Override
	public void deleteArticleById(String id ,HttpServletRequest request) {
		
		// 获取图片要保存的到的服务器路径
		String realPath = "resource/image/articleImg/" + id + "/";
		String path = request.getSession().getServletContext()
				.getRealPath(realPath);
		File f = new File(path);
		if (f.exists()) {
			
			   String[] tempList = f.list(); 
			   for (int i = 0; i < tempList.length; i++) {
				   	File file =new File(path+"/"+tempList[i]);
				   	if (file.isFile()) {
						file.delete();
						f.delete();
					}
			}
			
		}
		// TODO Auto-generated method stub
		articleMapper.deleteArticleById(id);
	}
	@Override
	public void updateArticleById(Article article) {
		// TODO Auto-generated method stub
		articleMapper.updateArticleById(article);
	}
	
	
	//分页查询
	@Override
	public String articlePagination(Pagination pagination) {

		List<Article> articles = articleMapper.articlePagination(pagination);
		int row = articleMapper.findArticleAllCount(pagination);
		Util<Article> util = new Util<Article>();
		String data = util.SplitPage(articles, row);
		return data;
		
	}
	/*@Override
	public int findArticleAllCount() {
		// TODO Auto-generated method stub
		return articleMapper.findArticleAllCount();
	}*/
	@Override
	/**查询所有商品信息，根据字段需求*/
	public String findArticle() throws Exception {
		List<Select> articles= articleMapper.findArticle();
		JSONArray jsonArray=new JSONArray();
		String data=jsonArray.fromObject(articles).toString();
		return data;
	}
	
	@Override
	public String findAllArticle() {
		List<ArticleExpand> articles= articleMapper.findAllArticle();
		JSONArray jsonArray=new JSONArray();
		String data=jsonArray.fromObject(articles).toString();
		return data;
	}
	@Override
	public String findAllTypeAndBusiness() {
		List<Select> business=businessMapper.findAllBusiness();
		List<Select> type =typeMapper.findTypeByArticl();
		Map<String, List> map=new HashMap<String, List>();
		map.put("business", business);
		map.put("type", type);
		JSONArray jsonArray=new JSONArray();
		String data=jsonArray.fromObject(map).toString();
		return data;
	}

	@Override
	public ArticleExpand findArticleAndTypeAndBusiness(String id) {
		ArticleExpand articleExpand = articleMapper.findArticleAndTypeAndBusiness(id);
		return articleExpand;
	}
	/***
	 * 医疗器械查询商品信息
	 * 
	 */
	@Override
	public List<Article> findArticleImgAndName(String typeId) throws Exception {
		List<Article> listArticle=articleMapper.findArticleImgAndName(typeId);
		return listArticle;
}
	//获取商品订单数量
	@Override
	public List<ArticleExpand> findArticleBuyNumber() {
		List<ArticleExpand> articleExpand  = articleMapper.findArticleBuyNumber();
		return articleExpand;
	}
	@Override
	public int selectArticleSalesNumberTotalById(String id) {
		
		return articleMapper.selectArticleSalesNumberTotalById(id);
	}
	
}
