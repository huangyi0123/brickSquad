package com.brick.squad.test;

import java.util.List;

import com.brick.squad.util.COS;

public class Test {
	public static void main(String[] args) {
		COS cos=new COS();
		cos.setBucketName("bricksquad");
		cos.setRegion("sh");
		String co="/articleList/123/";
		cos.deleteAll(co);
	}
}
