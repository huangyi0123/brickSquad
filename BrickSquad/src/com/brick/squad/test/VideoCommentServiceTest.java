package com.brick.squad.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;

import com.brick.squad.pojo.VideoComment;
import com.brick.squad.service.VideoCommentService;
import com.brick.squad.util.JunitClassRunner;

@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations = "classpath:com/brick/squad/config/applicationContext.xml")
public class VideoCommentServiceTest {
	@Autowired
	@Qualifier("videoCommentService")
	private VideoCommentService videoCommentService;
	
	@Test
	public void insertVideoCommentTest() throws Exception{
		VideoComment videoComment= new VideoComment();
		videoComment.setBeCommentedId("4444");
		videoComment.setCommontUserId("7777");
		videoComment.setContent("554545<Script>");
		videoCommentService.insertVideoComment(videoComment);
	}
}
