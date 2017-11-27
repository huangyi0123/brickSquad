package com.brick.squad.service.impl;

import java.util.Date;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JsonConfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;

import com.brick.squad.expand.VideoCommentExtend;
import com.brick.squad.expand.VideoCommentPagination;
import com.brick.squad.mapper.VideoCommentMapper;
import com.brick.squad.pojo.VideoComment;
import com.brick.squad.service.VideoCommentService;
import com.brick.squad.util.Filter;
import com.brick.squad.util.GridManagerList;
import com.brick.squad.util.JsonDateValueProcessor;

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

	@Override
	public String findVideoCommentCountByBeCommentedIdPagination(
			VideoCommentPagination videoCommentPagination) throws Exception {
		// TODO Auto-generated method stub
		GridManagerList<VideoCommentExtend> list = new GridManagerList<VideoCommentExtend>();
		List<VideoCommentExtend> videoCommentExtends = videoCommentMapper
				.findVideoCommentCountByBeCommentedIdPagination(videoCommentPagination);

		// 参数过滤
		for (VideoCommentExtend videoCommentExtend : videoCommentExtends) {
			videoCommentExtend = (VideoCommentExtend) Filter
					.filterObject(videoCommentExtend);
		}
		list.setData(videoCommentExtends);
		list.setTotals(videoCommentMapper
				.findVideoCommentCountByBeCommentedId(videoCommentPagination
						.getBeCommentedId()));
		JsonConfig jsonConfig = new JsonConfig();
		jsonConfig.registerJsonValueProcessor(Date.class,
				new JsonDateValueProcessor("yyyy年MM月dd日hh:mm:ss"));
		JSONArray jsonArray = JSONArray.fromObject(list, jsonConfig);
		return jsonArray.toString();

	}

	@Override
	public void updateBelittleAmout(String id) {
		videoCommentMapper.updateBelittleAmout(id);

	}

	@Override
	public void updatePraiseAmout(String id) {
		videoCommentMapper.updatePraiseAmout(id);

	}

}
