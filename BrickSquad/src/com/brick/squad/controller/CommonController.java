package com.brick.squad.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.brick.squad.util.UpLoadFile;

@Controller
@RequestMapping("/common")
public class CommonController {
	@RequestMapping("/toFrame")
	public String toFrame() {
		return "backstage_managed/jsp/frame";
	}

	@RequestMapping("/toIndex")
	public String toIndex() {
		return "redirect:/";
	}
	@RequestMapping("/toIndexModal")
	public String toIndexModal() {
		return "frontEnd_manage/util/turn";
	}
	@RequestMapping("/uploadImg")
	@ResponseBody
	public String uploadImg(MultipartFile file, HttpServletRequest request) {
		UpLoadFile upLoadFile=new UpLoadFile();
		List<String> list=new ArrayList<String>();
		String realPath="resource/image/news/";
		String path = request.getSession().getServletContext()
				.getRealPath(realPath);
		String name=file.getOriginalFilename();
		String pix=name.substring(name.lastIndexOf("."));
		String fileName = new Date().getTime()+pix;
		list.add(realPath+fileName);
		upLoadFile.setData(list);
		File file1 = new File(path, fileName);
		if (!file1.exists()) {
			file1.mkdirs();
		}
		try {
			file.transferTo(file1);
			upLoadFile.setErrno(0);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return upLoadFile.toJson();
	}
	@RequestMapping("/businessIndex")
	public String businessIndex(){
		return "frontEnd_manage/shop/business";
	}

	@RequestMapping("/toPersonal")
	public String toPersonal(){
		return "frontEnd_manage/person_information/Personal";
		
	}
	
	@RequestMapping("/toProductDetails")
	public String toProductDetails() {
		return "frontEnd_manage/shop/ProductDetails";
		
	}
	
}
