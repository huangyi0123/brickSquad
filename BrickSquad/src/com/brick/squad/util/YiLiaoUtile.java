package com.brick.squad.util;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.brick.squad.pojo.Article;

public class YiLiaoUtile {
	public List<Article> findArticleImgAndName(HttpServletRequest request,List<Article> listArticle){
		List<String> imgPath=new ArrayList<String>();
		for(Article article:listArticle){
			String path = request.getSession().getServletContext().
				getRealPath("resource/image/articleImg/"+article.getImage());
			String imgp=article.getImage();
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
							article.setImage(imgp+"/"+p);
						}
						
					}
				}
			}
		}
		
		}
		return listArticle;
	}
}
