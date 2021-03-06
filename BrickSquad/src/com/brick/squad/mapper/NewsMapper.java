package com.brick.squad.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.brick.squad.expand.NewsExpand;
import com.brick.squad.expand.NutritionalDiet;
import com.brick.squad.pojo.News;
import com.brick.squad.util.PageBeanUtil;
import com.brick.squad.util.Pagination;

public interface NewsMapper {

	// 添加新闻
	public void addNews(@Param("id") String id, @Param("userId") String userId,
			@Param("content") String content,
			@Param("imagePath") String imagePath,
			@Param("postTime") Date postTime);

	// 删除新闻
	public void deleteNews(String id);

	// 修改新闻
	public void updateNews(@Param("userId") String userId,
			@Param("content") String content);

	// 查询新闻
	public List<News> findNews(String content);
	
	/**
	 * 查询新闻信息总数分页
	 * */
	public Integer findNewsCountByPagination(Pagination pagination);
	/**
	 * 查询新闻信息总数
	 * */
	public Integer findNewsCount(Pagination pagination);

	// 新闻分页查询
	public List<NewsExpand> newsPagination(Pagination pagination);

	/**
	 * 添加新闻消息
	 * */
	public void insertNews(News news) throws Exception;

	/**
	 * 根据news的id修改信息
	 * */
	public void updateNewsById(News news) throws Exception;

	/**
	 * 根据新闻ID查询信息
	 * */
	public News findNewsById(String id) throws Exception;

	/**
	 * 获取 最新10条新闻
	 * 
	 * @return 新闻内容
	 */
	public List<News> findNewsList();

	/**
	 * 根据id查询新闻详情
	 * 
	 * @param id
	 *            id
	 * @return 新闻详情
	 */
	public NewsExpand findNewsExpandById(String id);

	/**
	 * 乐堡服务生活助手新闻显示
	 * */
	public List<News> findNewsLeBaoServer(PageBeanUtil pageBeanUtil);
	/**
	 * 乐堡服务生活助手新闻显示总记录数
	 * */
	public int findCountNewsLeBaoServer();


	/**
	 * 获取营养膳食分页列表
	 * 
	 * @param pagination
	 *            分页信息
	 * @return 分页列表
	 */
	public List<NutritionalDiet> NutritionalDietList(Pagination pagination);

	/**
	 * 获取营养膳食总数
	 * 
	 * @return 总记录数
	 */
	public int NutritionalDietCount();

	/**
	 * 根据id获取营养膳食详情
	 * 
	 * @param id
	 *            id
	 * @return 详情
	 */
	public NutritionalDiet NutritionalDietById(String id);
	/***
	 *  官网首页 ：动态新闻查询，日常新闻 
	 * */
	public List<News> findNewsDaily(String id);

}
