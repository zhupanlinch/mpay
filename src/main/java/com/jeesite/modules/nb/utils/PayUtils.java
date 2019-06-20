package com.jeesite.modules.nb.utils;

import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Map;

import com.jeesite.common.cache.CacheUtils;
import com.jeesite.common.codec.EncodeUtils;
import com.jeesite.common.config.Global;

/**
 * 支付相关的工具类
 * @author nb group
 *
 */
public class PayUtils {
	
	public static final String PAY_TYPE_ALI = "alipay";
	
	/**
	 * 获取唤醒支付的支付链接
	 * @param alipayUserId 收款账号userId
	 * @param orderName 订单名称
	 * @param money 付款金额
	 * @return
	 */
	public static Map<String, Object> getAlipayUrl(String alipayUserId, String orderName, Double money) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			Double rootMoney = money;
			Double beforeMoney = CacheUtils.get(alipayUserId+rootMoney.toString());
			String offset = Global.getConfig("offset");
			if (beforeMoney != null) {
				money = Double.valueOf(beforeMoney)-Double.parseDouble(offset);
			}
			String alipays = "alipays://platformapi/startapp?appId=20000067&url="; // 2019年04月07日 原appid 20000067 替换成 20000691
			/* IP轮训, 暂时不用
			 * String domain = "";
			if ("1".equals(CacheUtils.get("ipRandom"))) {
				CacheUtils.put("ipRandom", "2");
				domain = Global.getConfig("domain");
			}else{
				CacheUtils.put("ipRandom", "1");
				domain = Global.getConfig("domain2");
			}*/
			
			String urlMoney = formateMoney(money);
			
			//金额保持到分, 如果遇到角或者元是整数再偏移一分钱
			if(urlMoney.endsWith("0")){
				money = money-Double.parseDouble(offset);
				urlMoney = formateMoney(money);
			}
			//偏移总金额大于1元则从头开始偏移
			if (rootMoney-money>1) {
				money = rootMoney-Double.parseDouble(offset);
				urlMoney = formateMoney(money);
			}
			map.put("realMoney", urlMoney);
			
			String url = Global.getConfig("domain") + "/pay?u=" + alipayUserId + "&a=" + urlMoney;// + "&n=" + orderName;
			CacheUtils.put(alipayUserId+rootMoney.toString(), money);	
			map.put("url", alipays + EncodeUtils.encodeUrl(url));
			map.put("aliUserId", alipayUserId);
			map.put("qrcode", url);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
	
	/**
	 * 金额格式化
	 * @param money
	 * @return
	 */
	private static String formateMoney(Double money) {
		String urlMoney = "";
		DecimalFormat df = new DecimalFormat("#.00");
		if(money>=1){
			urlMoney = df.format(money);
		}else{
			urlMoney = "0" + df.format(money);
		}
		return urlMoney;
	}

}
