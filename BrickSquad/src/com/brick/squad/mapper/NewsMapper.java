package com.brick.squad.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.brick.squad.pojo.News;

public interface NewsMapper {
	
	//添加新闻
	public void addNews(
			@Param("id")String id,
			@Param("userId")String userId,
			@Param("content")String content,
			@Param("imagePath")String imagePath,
			@Param("postTime")Date postTime);
	//删除新闻
	public void deleteNews(String id);
	//修改新闻
	public void updateNews(@Param("userId")String userId,
							@Param("content")String content);
	//查询新闻
	public List<News> findNews(String content);
	

}
