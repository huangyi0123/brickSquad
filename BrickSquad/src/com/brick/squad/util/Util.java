package com.brick.squad.util;

import java.util.List;

import net.sf.json.JSONArray;
/**
 * 通用方法
 * @author 梁城月
 *
 * @param <T> 对象
 */
public class Util<T> {
	/**
	 * 分页
	 * @param rateds 分页数据集合
	 * @param row 数据条数
	 * @return json数据
	 */
	public String SplitPage(List<T> datas, int row) {
		GridManagerList<T> gridManagerList = new GridManagerList<T>();
		gridManagerList.setStatus("success");
		gridManagerList.setData(datas);
		gridManagerList.setTotals(row);
		JSONArray jsonArray = JSONArray.fromObject(gridManagerList);
		String data = jsonArray.toString();
		data = data.substring(1,data.length() - 1);
		return data;
	}

}
