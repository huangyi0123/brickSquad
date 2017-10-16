package com.brick.squad.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.ArticleMapper;
import com.brick.squad.pojo.Article;
import com.brick.squad.service.ArticalService;
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
	
}
