package com.brick.squad.util;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.brick.squad.pojo.Article;

public class YiLiaoUtile<T> {
	public List<T> findArticleImgAndName(HttpServletRequest request,List<T> listArticle){
		List<String> imgPath=new ArrayList<String>();
		for(T article:listArticle){
			String path = request.getSession().getServletContext().
				getRealPath("resource/image/articleImg/"+((Article) article).getImage());
			String imgp=((Article) article).getImage();
		  imgPath.add(path);
		String p=null;
		for(String realPath:imgPath){
			File file=new File(realPath);
			if(file.exists()){
				File[] files=file.listFiles();
				if(files.length==0){
				}else{
					for(File file2:files){
						
						if(file2.isDirectory()){
						}else{
							p=file2.getName();
							((Article) article).setImage(imgp+"/"+p);
						}
						
					}
				}
			}
		}
		
		}
		return listArticle;
	}
}
