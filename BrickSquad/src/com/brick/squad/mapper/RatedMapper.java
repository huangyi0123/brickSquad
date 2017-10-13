package com.brick.squad.mapper;

import com.brick.squad.pojo.Rated;
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
}
