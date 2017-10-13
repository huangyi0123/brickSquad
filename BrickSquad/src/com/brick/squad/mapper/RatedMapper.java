package com.brick.squad.mapper;

import com.brick.squad.pojo.Rated;

public interface RatedMapper {
public Rated findRatedById(String id);
public void insertRated(Rated rated);
public void deleteRatedById(String id);
public void updateRatedCententById(Rated rated);
}
