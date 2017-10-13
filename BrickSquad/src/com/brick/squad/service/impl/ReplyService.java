package com.brick.squad.service.impl;

import com.brick.squad.pojo.Reply;

public interface ReplyService {
	public Reply findReplyById(String id);
	public void insertReply(Reply reply);
	public void deleteReplyById(String id);
	public void updateReplyCententById(Reply reply);
}
