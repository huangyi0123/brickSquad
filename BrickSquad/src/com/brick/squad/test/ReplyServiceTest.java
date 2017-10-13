package com.brick.squad.test;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.Reply;
import com.brick.squad.service.impl.ReplyService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:com/brick/squad/config/applicationContext.xml")
public class ReplyServiceTest {
	@Autowired
	@Qualifier("replyService")
	private ReplyService replyService;

	@Test
	public void findReplyById() {
	Reply reply =  replyService.findReplyById("b7a32865b00c11e7ae5d8cdcd49043a9");
	System.out.println(reply.getCentent());
	}

	@Test
	public void insertReply() {
		Reply reply =new Reply();
		reply.setRatedId("45455");
		reply.setReplyDate(new Date());
		reply.setCentent("回复内容：1");
		
		replyService.insertReply(reply);
	}

	@Test
	public void deleteReplyById() {
		replyService.deleteReplyById("1");
	}

	@Test
	public void updateReplyCententById() {
		Reply reply = new Reply();
		reply.setId("1");
		reply.setCentent("修改後的回复");
		replyService.updateReplyCententById(reply);
		
		
	}
}
