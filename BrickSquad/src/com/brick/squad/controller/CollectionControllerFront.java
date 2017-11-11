package com.brick.squad.controller;





import java.util.List;
import java.util.Map;

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
import com.brick.squad.util.Pagination;

@Controller
@RequestMapping("/collectionFront")
public class CollectionControllerFront {
	@Autowired
	@Qualifier("collectionService")
	private CollectionService collectionService;
	
	@RequestMapping("/collectionMessage")
	public String collectionMessage(String pid,HttpServletRequest request,Pagination pagination){
		//根据登陆Pid获取收藏信息
		pagination.setUserId("77c9a2dec44911e7aca65254002ec43c");
		Map<String, Object> articleExpand=collectionService.findCollectionMessage(pagination);
		request.setAttribute("collectionMessage",articleExpand);
	
		return "frontEnd_manage/front_bootstrap/wishlist";
	}

}
