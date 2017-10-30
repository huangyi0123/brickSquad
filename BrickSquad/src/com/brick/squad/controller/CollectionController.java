package com.brick.squad.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.Collection;
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
		pagination.setKeyword(keyword);
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		String data = collectionService.collectionPagination(pagination);
		return data;
	}
	
	@RequestMapping("/toAddCollection")
	  public String toAddCollection(HttpServletRequest request, String id) {
		if (id != null) {
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updateCollectionById");
			Collection collection=collectionService.findCollectionById(id);
			request.setAttribute("collection", collection);
		} else {
			request.setAttribute("url", "insertCollection");
			request.setAttribute("msg", "添加");
		}
		return "backstage_managed/jsp/collection/add_collection";
		
	}
	
	 @InitBinder
		protected void initBinder(WebDataBinder binder) {
		    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
		}
	
	  @RequestMapping("/insertCollection")
	  public String insertCollection(Collection collection ) {
		  collectionService.insertCollection(collection);
		  return "backstage_managed/jsp/collection/collection_list";
		
	}
	  
	  @RequestMapping("/updateCollectionById")
		public String updateCollectionById(Collection collection ) {
			collectionService.updateCollectionById(collection);
			return "backstage_managed/jsp/collection/collection_list";
			
		}
		
		@RequestMapping("/deleteCollectionById")
		@ResponseBody
		public String deleteCollectionById(String id) {
			collectionService.deleteCollectionById(id);
			return "success";
					
		} 
}
