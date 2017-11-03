package com.brick.squad.service.impl;

import java.util.Date;
import java.util.List;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.RatedMapper;
import com.brick.squad.pojo.Medical;
import com.brick.squad.pojo.Rated;
import com.brick.squad.pojo.Region;
import com.brick.squad.service.RatedService;
import com.brick.squad.util.GridManagerList;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Util;

@Transactional
public class RatedServiceImpl implements RatedService {
	@Autowired
	@Qualifier("ratedMapper")
	private RatedMapper ratedMapper;

	@Override
	public Rated findRatedById(String id) {
		return ratedMapper.findRatedById(id);
	}

	@Override
	public void insertRated(Rated rated) {
		rated.setRatedDate(new Date());
		ratedMapper.insertRated(rated);

	}

	@Override
	public void deleteRatedById(String id) {
		ratedMapper.deleteRatedById(id);

	}

	@Override
	public void updateRatedCententById(Rated rated) {
		ratedMapper.updateRatedCententById(rated);

	}

	/**
	 * 评论分页查询
	 * 
	 * @param pagination
	 * @return
	 */
	@Override
	public String ratedPagination(Pagination pagination) {
		List<Rated> rateds = ratedMapper.ratedPagination(pagination);
		int row = ratedMapper.findRatedAllCount(pagination);
		Util<Rated> util = new Util<Rated>();
		String data = util.SplitPage(rateds, row);
		return data;
	}

	/*@Override
	public int findReplyAllCount() {
		// TODO Auto-generated method stub
		return ratedMapper.findRatedAllCount();
	}*/

	/**
	 * 将查询出的封装成json字符串
	 */
	@Override
	public String findAllRated() {
		List<Rated> rateds = ratedMapper.findAllRated();
		JSONArray jsonArray = new JSONArray();
		String datarated = jsonArray.fromObject(rateds).toString();
		return datarated;
	}

}
