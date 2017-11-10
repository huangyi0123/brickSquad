package com.brick.squad.service;

import com.brick.squad.pojo.Reply;
import com.brick.squad.util.Pagination;

public interface ReplyService {
	public Reply findReplyById(String id);

	public void insertReply(Reply reply);

	public void deleteReplyById(String id);

	public void updateReplyCententById(Reply reply);

	public String replyPagination(Pagination pagination);

	public int findReplyAllCount();

	public String findAllReply();
}
