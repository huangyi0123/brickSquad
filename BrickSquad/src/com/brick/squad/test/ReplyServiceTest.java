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
	public void replyPaginationTest(){
		Pagination pagination =new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(5);
		List<Reply> listReply = replyService.replyPagination(pagination);
		
		for (Reply reply : listReply) {
			System.out.println(reply.toString());
		}
		
	}
	
	@Test
	public void findReplyById() {
	Reply reply =  replyService.findReplyById("b7a32865b00c11e7ae5d8cdcd49043a9");
	System.out.println(reply.getCentent());
	}

	@Test
	public void insertReply() {
		for (int i = 0; i < 10; i++) {
			Reply reply =new Reply();
			reply.setRatedId("setRatedId"+i);
			reply.setReplyDate(new Date());
			reply.setCentent("回复内容："+i);
			
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
		reply.setId("1");
		reply.setCentent("修改後的回复");
		replyService.updateReplyCententById(reply);
		
		
	}
}
