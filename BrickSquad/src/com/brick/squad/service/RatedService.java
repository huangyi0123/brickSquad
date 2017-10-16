package com.brick.squad.service;

import com.brick.squad.pojo.Rated;

public interface RatedService {
	public Rated findRatedById(String id);
	public void insertRated(Rated rated);
	public void deleteRatedById(String id);
	public void updateRatedCententById(Rated rated);
}