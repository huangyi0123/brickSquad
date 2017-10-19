package com.brick.squad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.service.ReplyService;
import com.brick.squad.util.Pagination;

@RequestMapping("/reply")
@Controller
public class ReplyController {
	@Autowired
	@Qualifier("replyService")
	private ReplyService replyService;

	@RequestMapping("/toReplyList")
	public String toReplyList() {
		return "backstage_managed/jsp/reply/reply_list";
	}

	@RequestMapping("/getReplyList")
	@ResponseBody
	public String getReplyList(int pSize,int cPage,String keyword) {
		Pagination pagination=new Pagination();
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		
		return replyService.replyPagination(pagination);

	}
	@RequestMapping("/toAddReply")
	public String toAddReply() {
		return "backstage_managed/jsp/reply/add_reply";
	}
}
