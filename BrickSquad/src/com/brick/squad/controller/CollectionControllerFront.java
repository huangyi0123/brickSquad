package com.brick.squad.controller;





import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestMapping;









import com.brick.squad.expand.ArticleExpand;
import com.brick.squad.service.CollectionService;

@Controller
@RequestMapping("/collectionFront")
public class CollectionControllerFront {
	@Autowired
	@Qualifier("collectionService")
	private CollectionService collectionService;
	
	@RequestMapping("/collectionMessage")
	public String collectionMessage(String pid,HttpServletRequest request){
		//根据登陆Pid获取收藏信息
		List<ArticleExpand> articleExpand=collectionService.findCollectionMessage(pid);
		request.setAttribute("collectionMessage",articleExpand);
		return "null";
	}

}
