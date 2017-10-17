package com.brick.squad.service.impl;

import java.util.Date;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.mapper.NewsMapper;
import com.brick.squad.pojo.News;
import com.brick.squad.service.NewsService;
import com.brick.squad.util.Pagination;
/**
 * 新闻表 增删改查
 * @author Luyujing
 *
 */
public class NewsServiceImpl implements NewsService {
	@Autowired
	@Qualifier("newsMapper")
	private NewsMapper newsMapper;
	
	/*private File upload;//上传图片
	private String uploadFileName;//接收图片上传的文件名
	private String uploadContextType;//接收图片上传的文件的MIME类型
	
	public void setUpload(File upload) {
		this.upload = upload;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public void setUploadContextType(String uploadContextType) {
		this.uploadContextType = uploadContextType;
	}*/
	
	
	
	//添加新闻
	public void addNews(String id,String userId,String content,String imagePath,Date postTime){
		
		newsMapper.addNews(id,userId,content,imagePath,postTime);
		
	}
	//根据新闻ID删除新闻
	public void deleteNews(String id){
		
		newsMapper.deleteNews(id);
		
	}
	//根据编辑用户ID修改新闻
	public void updateNews(String userId,String content){
		
		newsMapper.updateNews(userId,content);
		
	}
	//根据新闻内容查询新闻
	public List<News> findNews(String content){
		return newsMapper.findNews(content);
		
	}
	//新闻分页查询
	public List<News> newsPagination(Pagination pagination){
		return newsMapper.newsPagination(pagination);
	}
}
