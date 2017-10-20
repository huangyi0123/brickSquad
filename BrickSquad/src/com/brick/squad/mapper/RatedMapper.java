package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.pojo.Rated;
import com.brick.squad.pojo.Region;
import com.brick.squad.util.Pagination;
/**
 * 
 * @author 吴文鑫
 *评论表的Mapper,定义对rated表的sql操作方法
 */
public interface RatedMapper {
	/**
	 * 根据ID查询评论
	 * @param id
	 * @return 评论记录
	 */
public Rated findRatedById(String id);
public void insertRated(Rated rated);
public void deleteRatedById(String id);
public void updateRatedCententById(Rated rated);
public List<Rated> findAllRated();
public List<Rated> ratedPagination(Pagination pagination);
public int findRatedAllCount();
}
