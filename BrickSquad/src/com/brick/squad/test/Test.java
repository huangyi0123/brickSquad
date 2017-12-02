package com.brick.squad.test;

import java.util.List;

import com.brick.squad.util.COS;

public class Test {
	public static void main(String[] args) {
		COS cos=new COS();
		cos.setBucketName("bricksquad");
		cos.setRegion("sh");
		List<String> list=cos.listFolder("/user_vedio/");
		System.out.println(list.toString());
	}
}
