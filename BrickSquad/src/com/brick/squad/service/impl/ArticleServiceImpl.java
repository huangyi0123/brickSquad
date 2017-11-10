package com.brick.squad.service.impl;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.expand.ArticleExpand;
import com.brick.squad.expand.NewsArticle;
import com.brick.squad.mapper.ArticleMapper;
import com.brick.squad.mapper.BusinessMapper;
import com.brick.squad.mapper.TypeMapper;
import com.brick.squad.pojo.Article;
import com.brick.squad.service.ArticalService;
import com.brick.squad.util.PageBeanUtil;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;
import com.brick.squad.util.Util;
import com.brick.squad.util.YiLiaoUtile;

@Transactional
public class ArticleServiceImpl implements ArticalService {
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
	public void deleteArticleById(String id, HttpServletRequest request) {

		// 获取图片要保存的到的服务器路径
		String realPath = "resource/image/articleImg/" + id + "/";
		String path = request.getSession().getServletContext()
				.getRealPath(realPath);
		File f = new File(path);
		if (f.exists()) {

			String[] tempList = f.list();
			for (int i = 0; i < tempList.length; i++) {
				File file = new File(path + "/" + tempList[i]);
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

	// 分页查询
	@Override
	public String articlePagination(Pagination pagination) {

		List<Article> articles = articleMapper.articlePagination(pagination);
		int row = articleMapper.findArticleAllCount(pagination);
		Util<Article> util = new Util<Article>();
		String data = util.SplitPage(articles, row);
		return data;

	}

	/*
	 * @Override public int findArticleAllCount() { // TODO Auto-generated
	 * method stub return articleMapper.findArticleAllCount(); }
	 */
	@Override
	/**查询所有商品信息，根据字段需求*/
	public String findArticle() throws Exception {
		List<Select> articles = articleMapper.findArticle();
		JSONArray jsonArray = new JSONArray();
		String data = jsonArray.fromObject(articles).toString();
		return data;
	}

	@Override
	public String findAllArticle() {
		List<ArticleExpand> articles = articleMapper.findAllArticle();
		JSONArray jsonArray = new JSONArray();
		String data = jsonArray.fromObject(articles).toString();
		return data;
	}

	@Override
	public String findAllTypeAndBusiness() {
		List<Select> business = businessMapper.findAllBusiness();
		List<Select> type = typeMapper.findTypeByArticl();
		Map<String, List> map = new HashMap<String, List>();
		map.put("business", business);
		map.put("type", type);
		JSONArray jsonArray = new JSONArray();
		String data = jsonArray.fromObject(map).toString();
		return data;
	}

	@Override
	public ArticleExpand findArticleAndTypeAndBusiness(String id) {
		ArticleExpand articleExpand = articleMapper
				.findArticleAndTypeAndBusiness(id);
		return articleExpand;
	}

	/***
	 * 医疗器械查询商品信息
	 * 
	 */
	@Override
	public List<Article> findArticleImgAndName(String typeId) throws Exception {
		List<Article> listArticle = articleMapper.findArticleImgAndName(typeId);
		return listArticle;
	}

	// 获取商品订单数量
	@Override
	public List<ArticleExpand> findArticleBuyNumber() {
		List<ArticleExpand> articleExpand = articleMapper
				.findArticleBuyNumber();
		return articleExpand;
	}

	/**
	 * 医疗器械类获取商品订单数量
	 * */
	@Override
	public List<ArticleExpand> findArticleBuyNumberAndMedicle(String parentId) {
		List<ArticleExpand> articleExpand = articleMapper
				.findArticleBuyNumberAndMedicle(parentId);
		return articleExpand;
	}

	@Override
	public int selectArticleSalesNumberTotalById(String id) {
		return articleMapper.selectArticleSalesNumberTotalById(id);
	}

	/**
	 * 医疗器械类获取商品总数
	 * */
	@Override
	public Integer findCountMedicalInstruments(String parentId)
			throws Exception {
		Integer count = articleMapper.findCountMedicalInstruments(parentId);
		return count;
	}

	/**
	 * 医疗器械类获所有商品分页查询
	 * */
	@Override
	public PageBeanUtil<Article> findArtivleAndMedicalInstrumentsPage(int page)
			throws Exception {
		PageBeanUtil<Article> pageBean = new PageBeanUtil<Article>();
		if (page == 0) {
			page = 1;
			// 设置当前页数:
			pageBean.setPage(page);
			// 设置每页显示记录数:
			int limit = 12;
			pageBean.setLimitPage(limit);
			// 设置总记录数:
			int totalCount = 0;
			totalCount = articleMapper
					.findCountMedicalInstruments("yiliaoqixie");
			pageBean.setTotalCount(totalCount);
			// 设置总页数:
			int totalPage = 0;
			// Math.ceil(totalCount / limit);
			if (totalCount % limit == 0) {
				totalPage = totalCount / limit;
			} else {
				totalPage = totalCount / limit + 1;
			}
			pageBean.setTotalPage(totalPage);
			// 每页显示的数据集合:
			// 从哪开始:
			int begin = (page - 1) * limit;
			pageBean.setBegin(begin);
			pageBean.setParentId("yiliaoqixie");
			List<Article> list = articleMapper
					.findAllMedicalInstruments(pageBean);
			pageBean.setList(list);
		} else {
			// 设置当前页数:
			pageBean.setPage(page);
			// 设置每页显示记录数:
			int limit = 12;
			pageBean.setLimitPage(limit);
			// 设置总记录数:
			int totalCount = 0;
			totalCount = articleMapper
					.findCountMedicalInstruments("yiliaoqixie");
			pageBean.setTotalCount(totalCount);
			// 设置总页数:
			int totalPage = 0;
			// Math.ceil(totalCount / limit);
			if (totalCount % limit == 0) {
				totalPage = totalCount / limit;
			} else {
				totalPage = totalCount / limit + 1;
			}
			pageBean.setTotalPage(totalPage);
			// 每页显示的数据集合:
			// 从哪开始:
			int begin = (page - 1) * limit;
			pageBean.setBegin(begin);
			pageBean.setParentId("yiliaoqixie");
			List<Article> list = articleMapper
					.findAllMedicalInstruments(pageBean);
			pageBean.setList(list);
		}
		return pageBean;

	}

	@Override
	public int selectArticleRatedTotalById(String id) {

		return articleMapper.selectArticleRatedTotalById(id);
	}

	@Override
	public PageBeanUtil<Article> findArtivleAndMedicalInstrumentsPage(int page,
			int limitPage) throws Exception {
		PageBeanUtil<Article> pageBean = new PageBeanUtil<Article>();
		// 设置当前页数:
		pageBean.setPage(page);
		// 设置每页显示记录数:
		/* int limit = 12; */
		pageBean.setLimitPage(limitPage);
		// 设置总记录数:
		int totalCount = 0;
		totalCount = articleMapper.findCountMedicalInstruments("yiliaoqixie");
		pageBean.setTotalCount(totalCount);
		// 设置总页数:
		int totalPage = 0;
		// Math.ceil(totalCount / limit);
		if (totalCount % limitPage == 0) {
			totalPage = totalCount / limitPage;
		} else {
			totalPage = totalCount / limitPage + 1;
		}
		pageBean.setTotalPage(totalPage);
		// 每页显示的数据集合:
		// 从哪开始:
		int begin = (page - 1) * limitPage;
		pageBean.setBegin(begin);
		pageBean.setParentId("yiliaoqixie");
		List<Article> list = articleMapper.findAllMedicalInstruments(pageBean);
		pageBean.setList(list);
		return pageBean;
	}

	@Override
	public Map<String, Object> shopIndex() {
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> m = new HashMap<>();
		//最新商品
		m.put("take", 6);
		m.put("order", "a.shelfdate");
		List<NewsArticle> aNewsArticles = articleMapper
				.findNewsArticleByIndex(m);
		m.put("take", 5);
		List<NewsArticle> aNewsArticlesTop = articleMapper
				.findNewsArticleByIndex(m);
		map.put("aNewsArticles", (Object) aNewsArticles);
		map.put("aNewsArticlesTop", aNewsArticlesTop);
		//热门商品
		m.put("order", "totals");
		m.put("take", 6);
		List<NewsArticle> rArticles=articleMapper.findNewsArticleByIndex(m);
		m.put("take", 5);
		List<NewsArticle> rArticlesTop=articleMapper.findNewsArticleByIndex(m);
		map.put("rArticles", rArticles);
		map.put("rArticlesTop", rArticlesTop);
		return map;
	}

	/** 医疗器械商品排序 */
	public PageBeanUtil<Article> findOrderByMedicalInstruments(int page,
			int sequence,int limitPage) throws Exception {
		PageBeanUtil<Article> pageBean=new PageBeanUtil<Article>();

		if(page==0){
			page=1;
		
		// 设置当前页数:
		pageBean.setPage(page);
		// 设置每页显示记录数:
		/*int limit = 12;*/
		pageBean.setLimitPage(limitPage);
	
		// 设置总记录数:
		int totalCount = 0;
		totalCount = articleMapper.findCountMedicalInstruments("yiliaoqixie");
		pageBean.setTotalCount(totalCount);
		// 设置总页数:
		int totalPage = 0;
		
		if (totalCount % limitPage == 0) {
			totalPage = totalCount / limitPage;
		} else {
			totalPage = totalCount / limitPage + 1;
		}
		pageBean.setTotalPage(totalPage);
		// 每页显示的数据集合:
		// 从哪开始:
		int begin = (page -1) *limitPage;
		pageBean.setBegin(begin);
		pageBean.setParentId("yiliaoqixie");
		List<Article> list = articleMapper.findOrderByMedicalInstruments(pageBean);
		pageBean.setList(list);

		}else{
			if (sequence == 4) {
				// 设置当前页数:
				pageBean.setPage(page);
				// 设置每页显示记录数:
				/* int limit = 12; */
				pageBean.setLimitPage(limitPage);
				// 设置总记录数:
				int totalCount = 0;
				totalCount = articleMapper
						.findCountMedicalInstruments("yiliaoqixie");
				pageBean.setTotalCount(totalCount);
				// 设置总页数:
				int totalPage = 0;
				// Math.ceil(totalCount / limit);
				if (totalCount % limitPage == 0) {
					totalPage = totalCount / limitPage;
				} else {
					totalPage = totalCount / limitPage + 1;
				}
				pageBean.setTotalPage(totalPage);
				// 每页显示的数据集合:
				// 从哪开始:
				int begin = (page - 1) * limitPage;
				pageBean.setBegin(begin);
				pageBean.setParentId("yiliaoqixie");
				List<Article> list = articleMapper
						.findOrderByMedicalInstruments(pageBean);
				pageBean.setList(list);
			}
		}
		return pageBean;
	}


	
	@Override
	/**医疗器械日期排序*/
	public PageBeanUtil<Article> findOrderByMedicalInstrumentsDate(int page ,int sequence,int limitPage)
			throws Exception {
		
		PageBeanUtil<Article> pageBean=new PageBeanUtil<Article>();

		if(page==0){
			page=1;
		
		// 设置当前页数:
		pageBean.setPage(page);
		// 设置每页显示记录数:
		/*int limit = 12;*/
		pageBean.setLimitPage(limitPage);
	
		// 设置总记录数:
		int totalCount = 0;
		totalCount = articleMapper.findCountMedicalInstruments("yiliaoqixie");
		pageBean.setTotalCount(totalCount);
		// 设置总页数:
		int totalPage = 0;
		
		if (totalCount % limitPage == 0) {
			totalPage = totalCount / limitPage;
		} else {
			totalPage = totalCount / limitPage + 1;
		}
		pageBean.setTotalPage(totalPage);
		// 每页显示的数据集合:
		// 从哪开始:
		int begin = (page -1) *limitPage;
		pageBean.setBegin(begin);
		pageBean.setParentId("yiliaoqixie");
		List<Article> list = articleMapper.findOrderByMedicalInstrumentsDate(pageBean);
		pageBean.setList(list);

		}else{
			
				// 设置当前页数:
				pageBean.setPage(page);
				// 设置每页显示记录数:
				/*int limit = 12;*/
				pageBean.setLimitPage(limitPage);
				// 设置总记录数:
				int totalCount = 0;
				totalCount = articleMapper.findCountMedicalInstruments("yiliaoqixie");
				pageBean.setTotalCount(totalCount);
				// 设置总页数:
				int totalPage = 0;
				// Math.ceil(totalCount / limit);
				if (totalCount % limitPage == 0) {
					totalPage = totalCount / limitPage;
				} else {
					totalPage = totalCount / limitPage + 1;
				}
				pageBean.setTotalPage(totalPage);
				// 每页显示的数据集合:
				// 从哪开始:
				int begin = (page -1) *limitPage;
				pageBean.setBegin(begin);
				pageBean.setParentId("yiliaoqixie");
				List<Article> list = articleMapper.findOrderByMedicalInstrumentsDate(pageBean);
				pageBean.setList(list);
		}
		return  pageBean;
	}

	@Override
	public List<NewsArticle> findFrontTime() {
		List<NewsArticle> NewsArticleList = articleMapper.findFrontTime();
		System.err.println(NewsArticleList.size());
		return NewsArticleList;
	}
	
	public PageBeanUtil<Article> findOrderByMedicalInstrumentsPop(int page,
			int sequence, int limitPage) throws Exception {
		
		PageBeanUtil<Article> pageBean=new PageBeanUtil<Article>();

		if(page==0){
			page=1;
		
		// 设置当前页数:
		pageBean.setPage(page);
		// 设置每页显示记录数:
		/*int limit = 12;*/
		pageBean.setLimitPage(limitPage);
	
		// 设置总记录数:
		int totalCount = 0;
		totalCount = articleMapper.findCountMedicalInstruments("yiliaoqixie");
		pageBean.setTotalCount(totalCount);
		// 设置总页数:
		int totalPage = 0;
		
		if (totalCount % limitPage == 0) {
			totalPage = totalCount / limitPage;
		} else {
			totalPage = totalCount / limitPage + 1;
		}
		pageBean.setTotalPage(totalPage);
		// 每页显示的数据集合:
		// 从哪开始:
		int begin = (page -1) *limitPage;
		pageBean.setBegin(begin);
		pageBean.setParentId("yiliaoqixie");
		List<Article> list = articleMapper.findOrderByMedicalInstrumentsPop(pageBean);
		pageBean.setList(list);

		}else{
			
				// 设置当前页数:
				pageBean.setPage(page);
				// 设置每页显示记录数:
				/*int limit = 12;*/
				pageBean.setLimitPage(limitPage);
				// 设置总记录数:
				int totalCount = 0;
				totalCount = articleMapper.findCountMedicalInstruments("yiliaoqixie");
				pageBean.setTotalCount(totalCount);
				// 设置总页数:
				int totalPage = 0;
				// Math.ceil(totalCount / limit);
				if (totalCount % limitPage == 0) {
					totalPage = totalCount / limitPage;
				} else {
					totalPage = totalCount / limitPage + 1;
				}
				pageBean.setTotalPage(totalPage);
				// 每页显示的数据集合:
				// 从哪开始:
				int begin = (page -1) *limitPage;
				pageBean.setBegin(begin);
				pageBean.setParentId("yiliaoqixie");
				List<Article> list = articleMapper.findOrderByMedicalInstrumentsPop(pageBean);
				pageBean.setList(list);
		}
		return  pageBean;
	}
}
