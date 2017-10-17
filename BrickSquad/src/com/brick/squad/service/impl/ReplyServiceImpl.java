package com.brick.squad.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.ReplyMapper;
import com.brick.squad.pojo.Reply;
import com.brick.squad.service.ReplyService;
import com.brick.squad.util.Pagination;
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

	@Override
	public List<Reply> replyPagination(Pagination pagination) {
		// TODO Auto-generated method stub
		return replyMapper.replyPagination(pagination);
	}

	@Override
	public int findReplyAllCount() {
		// TODO Auto-generated method stub
		return replyMapper.findReplyAllCount();
	}

}
