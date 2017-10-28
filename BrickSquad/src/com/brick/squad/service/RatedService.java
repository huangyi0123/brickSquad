package com.brick.squad.service;

import com.brick.squad.pojo.Rated;
import com.brick.squad.util.Pagination;

public interface RatedService {
	public Rated findRatedById(String id);
	public void insertRated(Rated rated);
	public void deleteRatedById(String id);
	public void updateRatedCententById(Rated rated);
	public String ratedPagination(Pagination pagination);
	//public int findReplyAllCount();
	public String findAllRated();
}
