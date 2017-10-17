package com.brick.squad.service;

import java.util.List;

import com.brick.squad.pojo.Rated;
import com.brick.squad.pojo.Region;
import com.brick.squad.util.Pagination;

public interface RatedService {
	public Rated findRatedById(String id);
	public void insertRated(Rated rated);
	public void deleteRatedById(String id);
	public void updateRatedCententById(Rated rated);
	public List<Rated> ratedPagination(Pagination pagination);
	public int findReplyAllCount();
}
