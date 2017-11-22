package com.brick.squad.service.impl;

import java.util.Date;
import java.util.List;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.ReplyMapper;
import com.brick.squad.pojo.Reply;
import com.brick.squad.service.ReplyService;
import com.brick.squad.util.Filter;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Util;

@Transactional
public class ReplyServiceImpl implements ReplyService {
	@Autowired
	@Qualifier("replyMapper")
	private ReplyMapper replyMapper;

	public Reply findReplyById(String id) throws Exception {
		Reply reply=replyMapper.findReplyById(id);
		reply=(Reply) Filter.filterObject(reply);
		return reply;
	}

	@Override
	public void insertReply(Reply reply) throws Exception {
		reply.setReplyDate(new Date());
		reply=(Reply) Filter.filterObject(reply);
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
	public String replyPagination(Pagination pagination) throws Exception {
		List<Reply> replies = replyMapper.replyPagination(pagination);
		for (Reply reply : replies) {
			reply=(Reply) Filter.filterObject(reply);
		}
		int row = replyMapper.findReplyAllCount();
		Util<Reply> util = new Util<Reply>();
		String data = util.SplitPage(replies, row);
		return data;
	}

	@Override
	public int findReplyAllCount() {
		// TODO Auto-generated method stub
		return replyMapper.findReplyAllCount();
	}

	@Override
	public String findAllReply() throws Exception {
		List<Reply> replies = replyMapper.findAllReply();
		for (Reply reply : replies) {
			reply=(Reply) Filter.filterObject(reply);
		}
		JSONArray jsonArray = new JSONArray();
		String replydata = jsonArray.fromObject(replies).toString();
		return replydata;
	}

}
