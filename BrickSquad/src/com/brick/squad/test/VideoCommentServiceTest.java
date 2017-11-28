package com.brick.squad.test;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;

import com.brick.squad.pojo.Type;
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
	@Test
	public void testJSON(){
		Type type=new Type();
		type.setName("JSON");
		String json="{\"chdren\":[],\"id\":\"\",\"name\":\"JSON\",\"parentId\":\"\"}";
		JSONObject jsonObject=JSONObject.fromObject(json);
		System.out.println(jsonObject.get("name"));
	}
}
