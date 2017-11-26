package com.brick.squad.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.mapper.VideoCommentMapper;
import com.brick.squad.pojo.VideoComment;
import com.brick.squad.service.VideoCommentService;

/**
 * 视频评论ServiceImpl,事物处理层，参数过滤等
 * 
 * @author 吴文鑫
 * 
 */
@Transactional
public class VideoCommentServiceImpl implements VideoCommentService {
	@Autowired
	@Qualifier("videoCommentMapper")
	private VideoCommentMapper videoCommentMapper;

	@Override
	public void insertVideoComment(VideoComment videoComment) throws Exception {
		videoComment.setCommentTime(new Date());
		videoCommentMapper.insertVideoComment(videoComment);
	}

}
