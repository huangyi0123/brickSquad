package com.brick.squad.service;

import java.util.List;

import com.brick.squad.pojo.Article;

public interface ArticalService {
	/**
	 * 
	 * @param id
	 * @return 返回商品列表
	 */
	
	public List<Article> findArticleById(String id);
}
