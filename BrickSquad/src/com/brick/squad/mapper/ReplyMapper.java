package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.pojo.Reply;
import com.brick.squad.util.Pagination;

/**
 * 
 * @author 吴文鑫 回复评论表的Mapper,定义对Reply表的sql操作方法
 */
public interface ReplyMapper {
	public Reply findReplyById(String id);

	public void insertReply(Reply reply);

	public void deleteReplyById(String id);

	public void updateReplyCententById(Reply reply);

	public List<Reply> replyPagination(Pagination pagination);

	public int findReplyAllCount();

	public List<Reply> findAllReply();
}
