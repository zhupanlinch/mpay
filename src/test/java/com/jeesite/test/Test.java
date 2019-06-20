package com.jeesite.test;

import java.util.HashMap;
import java.util.Map;

import com.jeesite.common.web.http.HttpClientUtils;

public class Test {

	public static void main(String[] args) {
		test();
	}
	public static void test(){
		Map<String, String> map = new HashMap<>();
		try {
			//回调参数
			map.put("status", "0");
			map.put("message", null);
			map.put("money", "11");
			map.put("realMoey", "SS");
			map.put("businessId", "0123");
			map.put("businessOrderId", "15641");
			//回调
			String post = HttpClientUtils.post("http://365pays.cn/Pay_Npay_notifyurl.html", map);
			System.err.println(post);
		} catch (Exception e) {
			// TODO: handle exception
			//回调参数
			e.printStackTrace();
		}
	}
	
}
