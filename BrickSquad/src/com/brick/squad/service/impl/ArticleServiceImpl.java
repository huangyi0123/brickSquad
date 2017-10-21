package com.brick.squad.service.impl;

import java.util.Date;
import java.util.List;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.ArticleMapper;
import com.brick.squad.pojo.Article;
import com.brick.squad.pojo.Reply;
import com.brick.squad.service.ArticalService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;
import com.brick.squad.util.Util;
@Transactional
public class ArticleServiceImpl implements ArticalService{
	@Autowired
	@Qualifier("articleMapper")
	private ArticleMapper articleMapper;
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
	public void deleteArticleById(String id) {
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
		int row = articleMapper.findArticleAllCount();
		Util<Article> util = new Util<Article>();
		String data = util.SplitPage(articles, row);
		return data;
		
	}
	@Override
	public int findArticleAllCount() {
		// TODO Auto-generated method stub
		return articleMapper.findArticleAllCount();
	}
	@Override
	/**查询所有商品信息，根据字段需求*/
	public String findArticle() throws Exception {
		List<Select> articles= articleMapper.findArticle();
		JSONArray jsonArray=new JSONArray();
		String data=jsonArray.fromObject(articles).toString();
		return data;
	}
	
}
