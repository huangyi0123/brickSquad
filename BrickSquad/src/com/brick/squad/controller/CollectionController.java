package com.brick.squad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.service.CollectionService;
import com.brick.squad.util.Pagination;

@Controller
@RequestMapping("/collection")
public class CollectionController {
	@Autowired
	@Qualifier("collectionService")
	private CollectionService collectionService;

	@RequestMapping("/toCollection")
	public String toCollection() {
		return "backstage_managed/jsp/collection/collection_list";
	}

	@RequestMapping("/getCollectionList")
	@ResponseBody
	public String getCollectionList(int pSize, int cPage,
			String keyword) {
		Pagination pagination = new Pagination();
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		String data = collectionService.collectionPagination(pagination);
		return data;
	}
}
