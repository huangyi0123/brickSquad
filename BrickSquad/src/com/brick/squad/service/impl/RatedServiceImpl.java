package com.brick.squad.service.impl;

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
		System.err.println(rated.getCentent() + "**");
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
 * @param pagination
 * @return
 */
	@Override
	public String ratedPagination(Pagination pagination) {
		GridManagerList<Rated> gridManagerList = new GridManagerList<Rated>();
		List<Rated> rateds = ratedMapper.ratedPagination(pagination);
		System.out.println(rateds.toString());
		gridManagerList.setStatus("success");
		gridManagerList.setData(rateds);
		gridManagerList.setTotals(ratedMapper.findRatedAllCount());
		JSONArray jsonArray = JSONArray.fromObject(gridManagerList);
		String data = jsonArray.toString();
		data = data.substring(1, data.length() - 1);
		return data;
	}

	@Override
	public int findReplyAllCount() {
		// TODO Auto-generated method stub
		return ratedMapper.findRatedAllCount();
	}

}
