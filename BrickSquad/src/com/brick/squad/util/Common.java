package com.brick.squad.util;

import java.util.ArrayList;
import java.util.List;

import com.brick.squad.pojo.Limits;

/**
 * 通用方法
 * 
 * @author 梁城月
 * 
 */
public class Common {
	/**
	 * 处理权限数据
	 * 
	 * @param result
	 *            字符串
	 * @return 权限数组
	 */
	public static List<Limits> limitsUtil(String result) {
		List<Limits> limits = new ArrayList<Limits>();
		String[] data = result.split(";");
		for (String item1 : data) {
			String[] da = item1.split(",");
			Limits li = new Limits();
			for (String item2 : da) {
				String[] d = item2.split(":");
				switch (d[0]) {
				case "id":
					li.setId(d[1]);
					break;
				case "query":
					li.setQuery(isTrueOrFalse(d[1]));
					break;
				case "ad":
					li.setAd(isTrueOrFalse(d[1]));
					break;
				case "dl":
					li.setDl(isTrueOrFalse(d[1]));
					break;
				default:
					li.setUp(isTrueOrFalse(d[1]));
					break;
				}
			}
			limits.add(li);
		}
		return limits;
	}

	/**
	 * 判断字符串为true或false
	 * 
	 * @param s
	 *            字符串
	 * @return true或false
	 */
	private static boolean isTrueOrFalse(String s) {
		if (s.equals("false")) {
			return false;
		} else {
			return true;
		}
	}
}
