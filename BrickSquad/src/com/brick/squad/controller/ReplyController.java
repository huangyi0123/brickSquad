package com.brick.squad.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.Reply;
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
		pagination.setKeyword(keyword);
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		return replyService.replyPagination(pagination);

	}
	@RequestMapping("/findAllReply")
	@ResponseBody
	public String findAllReply(){
		return replyService.findAllReply();
	}
	
	
	@RequestMapping("/toAddReply")
	public String toAddReply(HttpServletRequest request, String id) {
		if (id != null) {
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updateReplyById");
			Reply reply =replyService.findReplyById(id);
			request.setAttribute("reply", reply);
		} else {
			request.setAttribute("url", "addReply");
			request.setAttribute("msg", "添加");
		}
		return "backstage_managed/jsp/reply/add_reply";
	}
	@RequestMapping("/addReply")
	public String addReply(Reply reply){
		replyService.insertReply(reply);
		return "backstage_managed/jsp/reply/reply_list";
	}
	@RequestMapping("/deleteReplyById")
	@ResponseBody
	public String deleteReplyById(String id){
		replyService.deleteReplyById(id);
		return "success";
	}
	@RequestMapping("/updateReplyById")

	public String updateReplyById(Reply reply){
		replyService.updateReplyCententById(reply);
		return "backstage_managed/jsp/reply/reply_list";
	}
}
