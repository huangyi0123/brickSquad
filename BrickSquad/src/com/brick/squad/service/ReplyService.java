package com.brick.squad.service;

import com.brick.squad.pojo.Reply;
import com.brick.squad.util.Pagination;

public interface ReplyService {
	public Reply findReplyById(String id) throws Exception;

	public void insertReply(Reply reply) throws Exception;

	public void deleteReplyById(String id);

	public void updateReplyCententById(Reply reply);

	public String replyPagination(Pagination pagination) throws Exception;

	public int findReplyAllCount();

	public String findAllReply() throws Exception;
}
