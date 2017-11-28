package com.brick.squad.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.json.JsonObject;
import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.brick.squad.pojo.User;
import com.brick.squad.pojo.UserVedio;
import com.brick.squad.service.UserVedioService;
import com.brick.squad.util.COS;
import com.brick.squad.util.LayUpLoadFile;
import com.brick.squad.util.Pagination;

@Controller
@RequestMapping("/userVedio")
public class UserVedioController {
	@Autowired
	@Qualifier("userVedioService")
	private UserVedioService userVedioService;

	@RequestMapping("/getUserVedioList")
	@ResponseBody
	public String getUserVedioList(int pSize, int cPage, String keyword) {
		Pagination pagination = new Pagination();
		pagination.setKeyword(keyword);
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		return userVedioService.findUserVedioList(pagination);
	}

	@RequestMapping("/toUserVedioList")
	public String toUserVedioList() {
		return "backstage_managed/jsp/user_vedio/user_vedio_list";
	}

	@RequestMapping("/toAddUserVedio")
	public String toAddUserVedio(String id, HttpServletRequest request) {
		if (id != null) {
			request.setAttribute("msg", "修改");
		} else {
			request.setAttribute("msg", "添加");
			request.setAttribute("url", "insertUserVedio");
		}

		return "backstage_managed/jsp/user_vedio/add_user_vedio";
	}

	@RequestMapping("/insertUserVedio")
	public String insertUserVedio(UserVedio userVedio,
			HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		userVedio.setUserId(user.getId());
		String src = userVedio.getVediopath();
		src = src.substring(src.indexOf("'") + 1);
		src = src.substring(0, src.indexOf("'"));
		userVedio.setVediopath(src);
		userVedio.setPosttime(new Date());
		userVedioService.insertUserVedio(userVedio);
		return "backstage_managed/jsp/user_vedio/user_vedio_list";
	}

	@RequestMapping("/uploadImage")
	@ResponseBody
	private String uploadImage(MultipartFile file, HttpServletRequest request)
			throws IllegalStateException, IOException {

		String path = request.getSession().getServletContext().getRealPath("/");
		String name = file.getOriginalFilename();
		File file1 = new File(path, name);
		if (!file1.exists()) {
			file1.mkdirs();
		}
		file.transferTo(file1);
		String p = file1.getAbsolutePath();
		COS cos = new COS();
		cos.setBucketName("bricksquad");
		cos.setRegion("sh");
		String s = new Date().getTime() + "" + p.substring(p.lastIndexOf("."));
		String string = cos.upLoadImageToCOS(p, "/user_vedio/" + s);
		file1.delete();
		return string;
	}

	@RequestMapping("/getUserVedio")
	@ResponseBody
	public String getUserVedio(Pagination pagination) {
		return userVedioService.findUserVedioList(pagination);
	}

	@RequestMapping("/findUserVedioById")
	@ResponseBody
	public String findUserVedioById(String id) {
		return userVedioService.findUserVedioById(id);
	}
}
