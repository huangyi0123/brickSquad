package com.brick.squad.test;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.Rated;
import com.brick.squad.pojo.Reply;
import com.brick.squad.service.ReplyService;
import com.brick.squad.util.JunitClassRunner;
import com.brick.squad.util.Pagination;

@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations = "classpath:com/brick/squad/config/applicationContext.xml")
public class ReplyServiceTest {
	@Autowired
	@Qualifier("replyService")
	private ReplyService replyService;

	@Test
	public void findReplyAllCount() {
		System.out.println(replyService.findReplyAllCount());
	}

	@Test
	public void replyPaginationTest() throws Exception {
		Pagination pagination = new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(5);
		String listReply = replyService.replyPagination(pagination);
		System.out.println(listReply);
	}

	@Test
	public void findReplyById() throws Exception {
		Reply reply = replyService
				.findReplyById("e9809af8b4e111e78d4f5254002ec43c");
		System.out.println(reply.getCentent());
	}

	@Test
	public void insertReply() throws Exception {
		for (int i = 0; i < 10; i++) {
			Reply reply = new Reply();
			reply.setRatedId("setRatedId" + i);
			reply.setReplyDate(new Date());
			reply.setCentent("回复内容：" + i);
			replyService.insertReply(reply);
		}

	}

	@Test
	public void deleteReplyById() {
		replyService.deleteReplyById("1");
	}

	@Test
	public void updateReplyCententById() {
		Reply reply = new Reply();
		reply.setId("5e01c2d4b8a811e78d4f5254002ec43c");
		reply.setCentent("修改後的回复");
		replyService.updateReplyCententById(reply);
	}

	@Test
	public void findAllReply() throws Exception {
		String data = replyService.findAllReply();
		System.out.println(data);
	}
}
