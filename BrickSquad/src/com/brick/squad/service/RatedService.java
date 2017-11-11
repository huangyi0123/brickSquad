package com.brick.squad.service;

import java.util.List;

import com.brick.squad.pojo.OrderRated;
import com.brick.squad.pojo.Rated;
import com.brick.squad.util.Pagination;

public interface RatedService {
	public Rated findRatedById(String id);

	public void insertRated(Rated rated);

	public void deleteRatedById(String id);

	public void updateRatedCententById(Rated rated);

	public String ratedPagination(Pagination pagination);

	// public int findReplyAllCount();
	public String findAllRated();

	/**
	 * 根据商品ID查询该商品所有评论
	 * 
	 * @param articleId
	 *            商品ID
	 * @return
	 */
	public List<OrderRated> findOrderRatedByArticleId(String articleId);
}
