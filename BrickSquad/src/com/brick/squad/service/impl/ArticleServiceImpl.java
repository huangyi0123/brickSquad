package com.brick.squad.service.impl;

import java.io.File;
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
import com.brick.squad.expand.NewsArticle;
import com.brick.squad.expand.SecKill;
import com.brick.squad.mapper.ArticleMapper;
import com.brick.squad.mapper.BusinessMapper;
import com.brick.squad.mapper.ShopActivitiesMapper;
import com.brick.squad.mapper.TypeMapper;
import com.brick.squad.pojo.Article;
import com.brick.squad.service.ArticleService;
import com.brick.squad.util.PageBeanUtil;
import com.brick.squad.util.PageUtil;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;
import com.brick.squad.util.Util;

@Transactional
public class ArticleServiceImpl implements ArticleService {
	@Autowired
	@Qualifier("articleMapper")
	private ArticleMapper articleMapper;

	@Autowired
	@Qualifier("typeMapper")
	private TypeMapper typeMapper;

	@Autowired
	@Qualifier("businessMapper")
	private BusinessMapper businessMapper;
	@Autowired
	@Qualifier("shopActivitiesMapper")
	private ShopActivitiesMapper shopActivitiesMapper;

	@Override
	public Article findArticleById(String id) {
		// TODO Auto-generated method stub

		return articleMapper.findArticleById(id);
	}

	@Override
	public void insertArticleById(Article article) {
		// TODO Auto-generated method stub
		article.setShelfdate(new Date());
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

	/** 首页分类的跳转 */
	@Override
	public PageBeanUtil<Article> findArtivleTypePage(int page, String typeId)
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
			totalCount = articleMapper.findCountMedicalInstruments(typeId);
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
			pageBean.setParentId(typeId);
			List<Article> list = articleMapper.findArtivleTypePage(pageBean);
			pageBean.setList(list);
		} else {
			// 设置当前页数:
			pageBean.setPage(page);
			// 设置每页显示记录数:
			int limit = 12;
			pageBean.setLimitPage(limit);
			// 设置总记录数:
			int totalCount = 0;
			totalCount = articleMapper.findCountMedicalInstruments(typeId);
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
			pageBean.setParentId(typeId);
			List<Article> list = articleMapper.findArtivleTypePage(pageBean);
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
	public Map<String, Object> shopIndex(String userId) {
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> m = new HashMap<>();
		// 最新商品
		m.put("take", 6);
		m.put("order", "a.shelfdate");
		List<NewsArticle> aNewsArticles = articleMapper
				.findNewsArticleByIndex(m);
		m.put("take", 5);
		List<NewsArticle> aNewsArticlesTop = articleMapper
				.findNewsArticleByIndex(m);
		map.put("aNewsArticles", (Object) aNewsArticles);
		map.put("aNewsArticlesTop", aNewsArticlesTop);
		// 热门商品
		m.put("order", "totals");
		m.put("take", 6);
		List<NewsArticle> rArticles = articleMapper.findNewsArticleByIndex(m);
		m.put("take", 5);
		List<NewsArticle> rArticlesTop = articleMapper
				.findNewsArticleByIndex(m);
		map.put("rArticles", rArticles);
		map.put("rArticlesTop", rArticlesTop);
		// 秒杀
		List<SecKill> secKills = shopActivitiesMapper.secKillIndex();
		map.put("secKills", secKills);
		// 猜你喜欢
		if (userId == null) {
			map.put("myArticle", rArticles);
			System.err.println("---------------------------");
			map.put("myArticleTop", aNewsArticlesTop);
		} else {
			m.put("take", 6);
			m.put("userId", userId);
			map.put("myArticle", articleMapper.findUserArticle(m));
			m.put("take", 5);
			map.put("myArticleTop", articleMapper.findUserArticle(m));
		}
		return map;
	}

	/** 医疗器械商品排序 */
	public PageBeanUtil<Article> findOrderByMedicalInstruments(int page,
			int sequence, int limitPage) throws Exception {
		PageBeanUtil<Article> pageBean = new PageBeanUtil<Article>();

		if (page == 0) {
			page = 1;

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

		} else {
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
	public PageBeanUtil<Article> findOrderByMedicalInstrumentsDate(int page,
			int sequence, int limitPage) throws Exception {

		PageBeanUtil<Article> pageBean = new PageBeanUtil<Article>();

		if (page == 0) {
			page = 1;

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
					.findOrderByMedicalInstrumentsDate(pageBean);
			pageBean.setList(list);

		} else {

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
					.findOrderByMedicalInstrumentsDate(pageBean);
			pageBean.setList(list);
		}
		return pageBean;
	}

	@Override
	public List<NewsArticle> findFrontTime() {
		List<NewsArticle> NewsArticleList = articleMapper.findFrontTime();
		System.err.println(NewsArticleList.size());
		return NewsArticleList;
	}

	public PageBeanUtil<Article> findOrderByMedicalInstrumentsPop(int page,
			int sequence, int limitPage) throws Exception {

		PageBeanUtil<Article> pageBean = new PageBeanUtil<Article>();

		if (page == 0) {
			page = 1;

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
					.findOrderByMedicalInstrumentsPop(pageBean);
			pageBean.setList(list);

		} else {

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
					.findOrderByMedicalInstrumentsPop(pageBean);
			pageBean.setList(list);
		}
		return pageBean;
	}

	@Override
	/**查询一来哦器械类下的所属的类别的商品信息*/
	public List<Article> findSecondMedicalInstruments(String typeId)
			throws Exception {
		List<Article> listArticle = articleMapper.findArticleImgAndName(typeId);
		return listArticle;
	}

	// 获取商品总数，用于最新商品分页显示
	public Integer findFrontTimeNumber() {
		int count = articleMapper.findFrontTimeNumber();
		return count;
	}

	// 最新商品分页//////////////////////////////////////////////////////
	@Override
	public Map<String, Object> findArticlePage(PageUtil page, String path,
			String order) {
		// 创建一个map集合，用来装list和page
		Map<String, Object> map = new HashMap<>();
		Map<String, Object> m = new HashMap<String, Object>();
		m.put("order", order);
		m.put("skli", page.getSkipNum());
		m.put("take", page.getTakeNum());
		System.out.println("_________123___________" + m);
		// 创建一个list集合，把传入的order、skil、take参数查询出来的结果给list集合
		List<NewsArticle> list = articleMapper.findNewsArticle(m);
		// 得到总商品数
		int n = articleMapper.findFrontTimeNumber();
		// 设置总商品数
		page.setCount(n);
		for (NewsArticle item : list) {
			File file = new File(path + "/resource/image/articleImg/"
					+ item.getImage());
			File[] files = file.listFiles();
			if (files != null && files.length != 0) {
				item.setImage("resource/image/articleImg/" + item.getImage()
						+ "/" + files[0].getName());
			}
		}
		map.put("data", list);
		map.put("page", page);
		return map;

	}

	@Override
	/**查询所有商品信息：搜索框使用*/
	public Map<String, Object> findSearchAllArticle(PageUtil page, String path) {

		Map<String, Object> map = new HashMap<>();
		Map<String, Object> m = new HashMap<String, Object>();
		m.put("skli", page.getSkipNum());
		m.put("take", page.getTakeNum());
		int count;
		List<NewsArticle> list;
		String s = page.getS();
		String search_category = page.getSearch_category();
		if (s == "" && search_category == "") {
			list = articleMapper.findSearchAllArticle(m);
			count = articleMapper.findSearchArticleAllCount();
		} else if (s != "" && search_category != "") {
			if (search_category.equals("yiliaoqixie")) {
				m.put("s", page.getS());
				m.put("search_category", page.getSearch_category());
				list = articleMapper.findSearchAllArticleSecondYiLiao(m);
				count = articleMapper.findSearchAllArticleCountThreadOther(m);
			} else {
				m.put("s", page.getS());
				m.put("search_category", page.getSearch_category());
				list = articleMapper.findSearchAllArticleSecond(m);
				count = articleMapper
						.findSearchAllArticleCountSecond(search_category);
			}
		} else if (s != "" && search_category == "") {
			m.put("s", page.getS());
			m.put("search_category", page.getSearch_category());
			list = articleMapper.findSearchAllArticleSecondAll(m);
			count = articleMapper
					.findSearchAllArticleCountSecond(search_category);
		} else {
			if (search_category.equals("yiliaoqixie")) {
				m.put("s", page.getS());
				m.put("search_category", page.getSearch_category());
				list = articleMapper.findSearchAllArticleSecondYiLiaoSecond(m);
				count = articleMapper
						.findSearchAllArticleCountSecondOther(search_category);
			} else {
				m.put("s", page.getS());
				m.put("search_category", page.getSearch_category());
				list = articleMapper.findSearchAllArticleSecondOther(m);
				count = articleMapper
						.findSearchAllArticleCountSecond(search_category);
			}
		}
		page.setCount(count);
		for (NewsArticle item : list) {
			File file = new File(path + "/resource/image/articleImg/"
					+ item.getImage());
			File[] files = file.listFiles();
			if (files != null && files.length != 0) {
				item.setImage("resource/image/articleImg/" + item.getImage()
						+ "/" + files[0].getName());
			}
		}
		map.put("data", list);
		map.put("page", page);
		return map;
	}

	@Override
	public Map<String, Object> findSearchAllArticleSecond(PageUtil page,
			String path) {
		Map<String, Object> map = new HashMap<>();
		Map<String, Object> m = new HashMap<String, Object>();
		m.put("skli", page.getSkipNum());
		m.put("take", page.getTakeNum());
		String s = page.getS();
		String search_category = page.getSearch_category();
		List<NewsArticle> list = articleMapper.findSearchAllArticleSecond(m);
		int count = articleMapper
				.findSearchAllArticleCountSecond(search_category);
		page.setCount(count);
		for (NewsArticle item : list) {
			File file = new File(path + "/resource/image/articleImg/"
					+ item.getImage());
			File[] files = file.listFiles();
			if (files != null && files.length != 0) {
				item.setImage("resource/image/articleImg/" + item.getImage()
						+ "/" + files[0].getName());
			}
		}
		map.put("data", list);
		map.put("page", page);
		return map;
	}

	@Override
	public Map<String, Object> findSearchAllArticleSecondYiLiao(PageUtil page,
			String path) {
		Map<String, Object> map = new HashMap<>();
		Map<String, Object> m = new HashMap<String, Object>();
		m.put("skli", page.getSkipNum());
		m.put("take", page.getTakeNum());
		String s = page.getS();
		String search_category = page.getSearch_category();
		List<NewsArticle> list = articleMapper
				.findSearchAllArticleSecondYiLiao(m);
		int count = articleMapper
				.findSearchAllArticleCountSecond(search_category);
		page.setCount(count);
		for (NewsArticle item : list) {
			File file = new File(path + "/resource/image/articleImg/"
					+ item.getImage());
			File[] files = file.listFiles();
			if (files != null && files.length != 0) {
				item.setImage("resource/image/articleImg/" + item.getImage()
						+ "/" + files[0].getName());
			}
		}
		map.put("data", list);
		map.put("page", page);
		return map;
	}

	@Override
	/**
	 * 根据关键字查询所有商品信息
	 * */
	public Map<String, Object> findSearchAllArticleSecondAll(PageUtil page,
			String path) {
		Map<String, Object> map = new HashMap<>();
		Map<String, Object> m = new HashMap<String, Object>();
		m.put("skli", page.getSkipNum());
		m.put("take", page.getTakeNum());
		String s = page.getS();
		String search_category = page.getSearch_category();
		List<NewsArticle> list = articleMapper.findSearchAllArticleSecondAll(m);
		int count = articleMapper
				.findSearchAllArticleCountSecond(search_category);
		page.setCount(count);
		for (NewsArticle item : list) {
			File file = new File(path + "/resource/image/articleImg/"
					+ item.getImage());
			File[] files = file.listFiles();
			if (files != null && files.length != 0) {
				item.setImage("resource/image/articleImg/" + item.getImage()
						+ "/" + files[0].getName());
			}
		}
		map.put("data", list);
		map.put("page", page);
		return map;
	}

	@Override
	/**
	 * 搜索框根据分类查询商品信息
	 * */
	public Map<String, Object> findSearchAllArticleSecondOther(PageUtil page,
			String path) {
		Map<String, Object> map = new HashMap<>();
		Map<String, Object> m = new HashMap<String, Object>();
		m.put("skli", page.getSkipNum());
		m.put("take", page.getTakeNum());
		String s = page.getS();
		String search_category = page.getSearch_category();
		List<NewsArticle> list = articleMapper
				.findSearchAllArticleSecondOther(m);
		int count = articleMapper
				.findSearchAllArticleCountSecond(search_category);
		page.setCount(count);
		for (NewsArticle item : list) {
			File file = new File(path + "/resource/image/articleImg/"
					+ item.getImage());
			File[] files = file.listFiles();
			if (files != null && files.length != 0) {
				item.setImage("resource/image/articleImg/" + item.getImage()
						+ "/" + files[0].getName());
			}
		}
		map.put("data", list);
		map.put("page", page);
		return map;
	}

	@Override
	/**
	 * 搜索框根据分类查询商品信息,如果是一级分类
	 * */
	public Map<String, Object> findSearchAllArticleSecondYiLiaoSecond(
			PageUtil page, String path) {
		Map<String, Object> map = new HashMap<>();
		Map<String, Object> m = new HashMap<String, Object>();
		m.put("skli", page.getSkipNum());
		m.put("take", page.getTakeNum());
		String s = page.getS();
		String search_category = page.getSearch_category();
		List<NewsArticle> list = articleMapper
				.findSearchAllArticleSecondYiLiaoSecond(m);
		int count = articleMapper
				.findSearchAllArticleCountSecond(search_category);
		page.setCount(count);
		for (NewsArticle item : list) {
			File file = new File(path + "/resource/image/articleImg/"
					+ item.getImage());
			File[] files = file.listFiles();
			if (files != null && files.length != 0) {
				item.setImage("resource/image/articleImg/" + item.getImage()
						+ "/" + files[0].getName());
			}
		}
		map.put("data", list);
		map.put("page", page);
		return map;
	}

	@Override
	/**
	 * 一二级关联查询总数
	 * */
	public int findSearchAllArticleCountSecondOther(String typeId) {
		int count = articleMapper.findSearchAllArticleCountSecondOther(typeId);
		return count;
	}

	@Override
	/**
	 * 根据关键字查询商品信息计算总数
	 * */
	public int findSearchAllArticleCountThreadOther(Map<String, Object> map) {
		int count = articleMapper.findSearchAllArticleCountThreadOther(map);
		return count;
	}

	@Override
	public int findSearchAllArticleCountSecond(String typeId) {
		int count = articleMapper.findSearchAllArticleCountSecond(typeId);
		return count;
	}

	/**
	 * 根据商品的价格范围查询商品信息
	 * */
	@Override
	public PageBeanUtil<Article> findPriceScope(int page, int limitPage,
			double minPrice, double maxPrice) throws Exception {
		PageBeanUtil<Article> pageBean = new PageBeanUtil<Article>();
		if (page == 0 || limitPage == 0 && maxPrice == 0 || minPrice == 0) {
			page = 1;
			limitPage = 12;
			// 设置当前页数:
			pageBean.setPage(page);
			// 设置每页显示记录数:
			/* int limit = 12; */
			pageBean.setLimitPage(limitPage);
			pageBean.setMin_price(minPrice);
			pageBean.setMax_price(maxPrice);
			// 设置总记录数:
			int totalCount = 0;
			totalCount = articleMapper
					.findCountMedicalInstruments("yiliaoqixie");
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
			int begin = (page - 1) * limitPage;
			pageBean.setBegin(begin);
			pageBean.setParentId("yiliaoqixie");
			List<Article> list = articleMapper.findPriceScope(pageBean);
			pageBean.setList(list);

		} else {

			// 设置当前页数:
			pageBean.setPage(page);
			// 设置每页显示记录数:
			/* int limit = 12; */
			pageBean.setLimitPage(limitPage);
			pageBean.setMin_price(minPrice);
			pageBean.setMax_price(maxPrice);
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
			List<Article> list = articleMapper.findPriceScope(pageBean);
			pageBean.setList(list);
		}
		return pageBean;
	}

	// 团购的分页查询
	@Override
	public Map<String, Object> findArticlePages(PageUtil page, String path,
			String order) {
		// 创建一个map集合，用来装list和page
		Map<String, Object> map = new HashMap<>();
		Map<String, Object> m = new HashMap<String, Object>();
		m.put("order", order);
		m.put("skli", page.getSkipNum());
		m.put("take", page.getTakeNum());
		// 创建一个list集合，把传入的order、skil、take参数查询出来的结果给list集合
		List<NewsArticle> list = articleMapper.findNewsArticles(m);
		System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" + list);
		// 得到总团购商品数
		int n = articleMapper.findNewsArticleNumber();
		// 设置总商品数
		page.setCount(n);
		for (NewsArticle item : list) {
			File file = new File(path + "/resource/image/articleImg/"
					+ item.getImage());
			File[] files = file.listFiles();
			if (files != null && files.length != 0) {
				item.setImage("resource/image/articleImg/" + item.getImage()
						+ "/" + files[0].getName());
			}
		}
		map.put("data", list);
		map.put("page", page);
		return map;

	}

	@Override
	public int findSearchArticleAllCount() throws Exception {
		/** 查询所有商品总数 */
		int count = articleMapper.findSearchArticleAllCount();
		return count;
	}

	@Override
	public PageBeanUtil findArtivleAndMedicalInstrumentsPage(int page,
			int limitPage, String typeId) {
		PageBeanUtil<Article> pageBean = new PageBeanUtil<Article>();
		// 设置当前页数:
		pageBean.setPage(page);
		// 设置每页显示记录数:
		/* int limit = 12; */
		pageBean.setLimitPage(limitPage);
		// 设置总记录数:
		int totalCount = 0;
		totalCount = articleMapper.findCountMedicalInstruments(typeId);
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
		pageBean.setParentId(typeId);
		List<Article> list = articleMapper.findAllMedicalInstruments(pageBean);
		pageBean.setList(list);
		return pageBean;
	}

	@Override
	public PageBeanUtil findOrderByTypeSecondDate(int page, int sequence,
			int limitPage, String typeId) {

		PageBeanUtil<Article> pageBean = new PageBeanUtil<Article>();

		if (page == 0) {
			page = 1;

			// 设置当前页数:
			pageBean.setPage(page);
			// 设置每页显示记录数:
			/* int limit = 12; */
			pageBean.setLimitPage(limitPage);

			// 设置总记录数:
			int totalCount = 0;
			totalCount = articleMapper.findCountMedicalInstruments(typeId);
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
			int begin = (page - 1) * limitPage;
			pageBean.setBegin(begin);
			pageBean.setParentId(typeId);
			List<Article> list = articleMapper
					.findOrderByMedicalInstrumentsDate(pageBean);
			pageBean.setList(list);

		} else {

			// 设置当前页数:
			pageBean.setPage(page);
			// 设置每页显示记录数:
			/* int limit = 12; */
			pageBean.setLimitPage(limitPage);
			// 设置总记录数:
			int totalCount = 0;
			totalCount = articleMapper.findCountMedicalInstruments(typeId);
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
			pageBean.setParentId(typeId);
			List<Article> list = articleMapper
					.findOrderByMedicalInstrumentsDate(pageBean);
			pageBean.setList(list);
		}
		return pageBean;
	}

	@Override
	public PageBeanUtil findOrderByTypePop(int page, int sequence,
			int limitPage, String typeId) {
		PageBeanUtil<Article> pageBean = new PageBeanUtil<Article>();

		if (page == 0) {
			page = 1;

			// 设置当前页数:
			pageBean.setPage(page);
			// 设置每页显示记录数:
			/* int limit = 12; */
			pageBean.setLimitPage(limitPage);

			// 设置总记录数:
			int totalCount = 0;
			totalCount = articleMapper.findCountMedicalInstruments(typeId);
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
			int begin = (page - 1) * limitPage;
			pageBean.setBegin(begin);
			pageBean.setParentId(typeId);
			List<Article> list = articleMapper
					.findOrderByMedicalInstrumentsPop(pageBean);
			pageBean.setList(list);

		} else {

			// 设置当前页数:
			pageBean.setPage(page);
			// 设置每页显示记录数:
			/* int limit = 12; */
			pageBean.setLimitPage(limitPage);
			// 设置总记录数:
			int totalCount = 0;
			totalCount = articleMapper.findCountMedicalInstruments(typeId);
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
			pageBean.setParentId(typeId);
			List<Article> list = articleMapper
					.findOrderByMedicalInstrumentsPop(pageBean);
			pageBean.setList(list);
		}
		return pageBean;
	}

	@Override
	public PageBeanUtil findOrderByArticlePrice(int page, int sequence,
			int limitPage, String typeId) {

		PageBeanUtil<Article> pageBean = new PageBeanUtil<Article>();

		if (page == 0) {
			page = 1;

			// 设置当前页数:
			pageBean.setPage(page);
			// 设置每页显示记录数:
			/* int limit = 12; */
			pageBean.setLimitPage(limitPage);

			// 设置总记录数:
			int totalCount = 0;
			totalCount = articleMapper.findCountMedicalInstruments(typeId);
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
			int begin = (page - 1) * limitPage;
			pageBean.setBegin(begin);
			pageBean.setParentId(typeId);
			List<Article> list = articleMapper
					.findOrderByMedicalInstruments(pageBean);
			pageBean.setList(list);

		} else {
			if (sequence == 4) {
				// 设置当前页数:
				pageBean.setPage(page);
				// 设置每页显示记录数:
				/* int limit = 12; */
				pageBean.setLimitPage(limitPage);
				// 设置总记录数:
				int totalCount = 0;
				totalCount = articleMapper.findCountMedicalInstruments(typeId);
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
				pageBean.setParentId(typeId);
				List<Article> list = articleMapper
						.findOrderByMedicalInstruments(pageBean);
				pageBean.setList(list);
			}
		}
		return pageBean;
	}

	@Override
	public PageBeanUtil findTitlePriceScope(int page, int limitPage,
			double minPrice, double maxPrice, String typeId) {
		PageBeanUtil<Article> pageBean = new PageBeanUtil<Article>();
		if (page == 0 || limitPage == 0 && maxPrice == 0 || minPrice == 0) {
			page = 1;
			limitPage = 12;
			// 设置当前页数:
			pageBean.setPage(page);
			// 设置每页显示记录数:
			/* int limit = 12; */
			pageBean.setLimitPage(limitPage);
			pageBean.setMin_price(minPrice);
			pageBean.setMax_price(maxPrice);
			pageBean.setTypeId(typeId);
			// 设置总记录数:
			int totalCount = 0;
			totalCount = articleMapper.findCountMedicalInstruments(typeId);
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
			int begin = (page - 1) * limitPage;
			pageBean.setBegin(begin);
			pageBean.setParentId(typeId);
			List<Article> list = articleMapper.findPriceScope(pageBean);
			pageBean.setList(list);

		} else {

			// 设置当前页数:
			pageBean.setPage(page);
			// 设置每页显示记录数:
			/* int limit = 12; */
			pageBean.setLimitPage(limitPage);
			pageBean.setMin_price(minPrice);
			pageBean.setMax_price(maxPrice);
			pageBean.setTypeId(typeId);
			// 设置总记录数:
			int totalCount = 0;
			totalCount = articleMapper.findCountMedicalInstruments(typeId);
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
			pageBean.setParentId(typeId);
			List<Article> list = articleMapper.findPriceScope(pageBean);
			pageBean.setList(list);
		}
		return pageBean;
	}

	@Override
	/**根据type的parentId查询商品的typeId*/
	public List<String> findArticleTypeIdSecond(PageBeanUtil pageBeanUtil) {
		List<String> data = articleMapper.findArticleTypeIdSecond(pageBeanUtil);
		return data;
	}

	@Override
	public String findEchartsAreac(Map<String, Object> map) {
		List<Map<String, Object>> m = articleMapper.findEchartsAreac(map);
		JSONArray jsonArray = JSONArray.fromObject(m);
		return jsonArray.toString();
	}
}
