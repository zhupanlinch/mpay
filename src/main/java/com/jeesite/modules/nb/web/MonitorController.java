package com.jeesite.modules.nb.web;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.codec.digest.DigestUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.jeesite.common.config.Global;
import com.jeesite.common.web.http.HttpClientUtils;
import com.jeesite.modules.nb.entity.NbAliAccountPool;
import com.jeesite.modules.nb.entity.NbBusiness;
import com.jeesite.modules.nb.entity.NbOrder;
import com.jeesite.modules.nb.service.NbAliAccountPoolService;
import com.jeesite.modules.nb.service.NbBusinessService;
import com.jeesite.modules.nb.service.NbOrderService;

/**
 * 监听客户端对接
 * @author nb group
 *
 */
@Controller
@RequestMapping(value = "/addons")
public class MonitorController {
	
	Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private NbOrderService nbOrderService;
	
	@Autowired
	private NbAliAccountPoolService nbAliAccountPoolService;
	
	@Autowired
	private NbBusinessService nbBusinessService;
	/**
	 * @param sign md5Hex(md5Hex(apiurl)+secretkey)
	 * @param apiurl "Http://****:8080/addons/pay/"
	 * @param secretkey 用支付宝的userId
	 * 验证客户端
	 * @return
	 */
	@RequestMapping(value = "/pay{aliUserId}/api/setting")
	@ResponseBody
	public Object setting(String sign, String apiurl, String secretkey, @PathVariable("aliUserId")String aliUserId) {
		try {
			JSONObject json = new JSONObject();
			String md5 = String.valueOf(DigestUtils.md5Hex(DigestUtils.md5Hex(apiurl) + secretkey));
			if (sign.equals(md5)) {
				json.put("code", 1);
				json.put("msg", "配置成功!");
				json.put("data", "");
				json.put("url", "");
				json.put("wait", 3);
			}
			return json;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 监听到收款信息就会向服务端推送信息
	 * @param sign md5Hex(md5Hex(price + type) + secretkey)
	 * @param type 支付宝 "alipay"
	 * @return
	 */
	@RequestMapping(value = "/pay{aliUserId}/api/notify")
	@ResponseBody
	public Object notify(String sign, String price, String type, @PathVariable("aliUserId")String aliUserId) {
		try {
			JSONObject json = new JSONObject();
			// 这里的md5的值对应订单表里面的callback_sign
			//String md5 = String.valueOf(DigestUtils.md5Hex(DigestUtils.md5Hex(price + type) + Global.getConfig("secret_key")));
			//if (sign.equals(md5)) {
				json.put("code", 1);
				json.put("msg", "收款处理成功!");
				json.put("data", "");
				json.put("url", "");
				json.put("wait", 3);
				
				NbOrder nbOrder = new NbOrder();
				//nbOrder.setCallbackSign(sign);
				nbOrder.setCallbackSign(aliUserId+"_"+price);
				// 通知回调  更新订单状态  sign是订单的唯一标识
				nbOrder = nbOrderService.findByCallbackSign(nbOrder);
				if(null != nbOrder){
					nbOrder.setStatus(Global.YES);
					nbOrder.setPayTime(new Date());
					nbOrderService.update(nbOrder); //更新数据库订单支付状态
				}
				log.info("--------aliUserId: {}, price: {}", aliUserId, price);
				// 通知回调  更新收款账号状态  收款次数  收款金额  最后收款时间
				NbAliAccountPool nbAliAccountPool = new NbAliAccountPool();
				nbAliAccountPool.setUserid(aliUserId);
				nbAliAccountPool = nbAliAccountPoolService.findByAlipayUserId(nbAliAccountPool);
				nbAliAccountPool.setNum(nbAliAccountPool.getNum()==null? 1: nbAliAccountPool.getNum() + 1);
				nbAliAccountPool.setMoney(nbAliAccountPool.getMoney()==null? nbOrder.getRealMoney(): nbAliAccountPool.getMoney() + nbOrder.getRealMoney());
				nbAliAccountPool.setLastTime(new Date());
				//回调成功权重加一
				if (nbAliAccountPool.getWeight()<100) {
					nbAliAccountPool.setWeight(nbAliAccountPool.getWeight()+1);
				}
				nbAliAccountPoolService.update(nbAliAccountPool);
				// 通知第三方 notify 发送请求
				Map<String, String> map = new HashMap<>();
				try {
					//回调参数
					map.put("status", "0");
					map.put("message", null);
					map.put("money", nbOrder.getMoney().toString());
					map.put("realMoey", nbOrder.getRealMoney().toString());
					map.put("businessId", nbOrder.getBusinessId());
					map.put("businessOrderId", nbOrder.getBusinessOrderId());
					String str = UUID.randomUUID().toString();
					String randomString = str.split("-")[0];
					map.put("randomString", randomString);
					//获取商户
					NbBusiness nbBusiness = new NbBusiness();
					nbBusiness.setId(nbOrder.getBusinessId());
					NbBusiness tempBusiness = nbBusinessService.get(nbBusiness);
					String sign1 = DigestUtils.md5Hex(DigestUtils.md5Hex(nbOrder.getNotifyUrl() + randomString) + tempBusiness.getSecretKey());
					map.put("sign", sign1);
					log.info("map Object================================"+JSON.toJSONString(map));
					log.info("callBack url================================"+nbOrder.getNotifyUrl());
					
					//回调 //由于回调延迟 回调5次
					String result = null;
					for (int i = 0; i < 5; i++) {
						result = HttpClientUtils.post(nbOrder.getNotifyUrl(), map);
					}
					log.info(result);
				} catch (Exception e) {
					// TODO: handle exception
					//回调参数
					//map.put("status", "1");
					//map.put("message", e.getMessage());
					//HttpClientUtils.post(nbOrder.getNotifyUrl(), map);
					log.error(e.getMessage());
					e.printStackTrace();
				}
				// 
			//}
			return json;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
