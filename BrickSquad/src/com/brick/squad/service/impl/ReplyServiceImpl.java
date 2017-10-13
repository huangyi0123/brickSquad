package com.brick.squad.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.ReplyMapper;
import com.brick.squad.pojo.Reply;
import com.brick.squad.service.ReplyService;
@Transactional
public class ReplyServiceImpl implements ReplyService {
	@Autowired
	@Qualifier("replyMapper")
	private ReplyMapper replyMapper;

	public Reply findReplyById(String id) {

		return replyMapper.findReplyById(id);
	}

	@Override
	public void insertReply(Reply reply) {
		replyMapper.insertReply(reply);

	}

	@Override
	public void deleteReplyById(String id) {
		replyMapper.deleteReplyById(id);

	}

	@Override
	public void updateReplyCententById(Reply reply) {
		replyMapper.updateReplyCententById(reply);

	}

}
