package com.brick.squad.expand;

import com.brick.squad.util.Pagination;

/**
 * 用于根据视频类型ID分页查询activities 的视频路径
 * 
 * @author 吴文鑫
 * 
 */
public class ActivitiesAndPaginationExtend extends Pagination {
	private String movieTypeId;

	public String getMovieTypeId() {
		return movieTypeId;
	}

	public void setMovieTypeId(String movieTypeId) {
		this.movieTypeId = movieTypeId;
	}

	@Override
	public String toString() {
		return "ActivitiesAndPaginationExtend [movieTypeId=" + movieTypeId
				+ "]";
	}

}
