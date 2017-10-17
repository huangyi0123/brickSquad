package com.brick.squad.util;

import java.util.List;

import net.sf.json.JSONArray;

import com.brick.squad.pojo.Rated;

public class Util {
	public String SplitPage(Pagination pagination) {
		GridManagerList<T> gridManagerList = new GridManagerList<T>();
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
}
