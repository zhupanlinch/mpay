package com.jeesite.modules.nb.web;

import java.util.Date;
import java.util.Map;

import javax.validation.constraints.NotBlank;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.StringUtils;
import org.hibernate.validator.constraints.Length;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jeesite.common.cache.CacheUtils;
import com.jeesite.common.config.Global;
import com.jeesite.common.image.CaptchaUtils;
import com.jeesite.modules.nb.entity.NbAliAccountPool;
import com.jeesite.modules.nb.entity.NbBusiness;
import com.jeesite.modules.nb.entity.NbOrder;
import com.jeesite.modules.nb.entity.NbResultVO;
import com.jeesite.modules.nb.service.NbAliAccountPoolService;
import com.jeesite.modules.nb.service.NbBusinessService;
import com.jeesite.modules.nb.service.NbOrderService;
import com.jeesite.modules.nb.utils.PayUtils;


/**
 * 支付controller
 * @author nb group
 *
 */
@Controller
@RequestMapping(value = "/pay")
public class PayController {
	
	private static final Logger log = LoggerFactory.getLogger(PayController.class);
	
	@Autowired
	private NbOrderService nbOrderService;
	
	@Autowired
	private NbAliAccountPoolService nbAliAccountPoolService;
	
	@Autowired
	private NbBusinessService nbBusinessService;

	/**
	 * 支付回调界面
	 */
	@RequestMapping(value = {""})
	public String pay(Model model) {
		//轮训支付宝界面
		//String html [] = {"callback2","callback3","callback1","callback4"};
		String html [] = {"callback1"};
		Integer payHtmlIndex = CacheUtils.get("payHtml");
		if(payHtmlIndex==null){
			payHtmlIndex = 0;
		}else{
			payHtmlIndex += 1;
		}
		String htmlPage = "";
		if(payHtmlIndex < html.length){
			htmlPage = html[payHtmlIndex];
		}else{
			htmlPage = html[0];
			payHtmlIndex = 0;
		}
		CacheUtils.put("payHtml", payHtmlIndex);
		log.info("===================={}",htmlPage);
		return "modules/pay/" + htmlPage;
	}
	
	/**
	 * 支付成功回调
	 */
	@RequestMapping(value = {"call"})
	public String call(String a, Model model) {
		System.out.println("成功支付=============="+a);
		return "modules/pay/callback";
	}
	
	/**
	 * 商户请求支付接口  /pay/getway/
	 * @param businessOrderId 用户订单编号
	 * @param businessId 商户编号
	 * @param description 商品描述
	 * @param extrat 商品附加信息
	 * @param money 交易金额
	 * @param notifyUrl 回调通知地址
	 * @param payType 支付方式 （支付宝）
	 */
	@RequestMapping("/getway")
	@ResponseBody
	public NbResultVO businessGateway(@RequestParam("businessOrderId") String businessOrderId,
			@RequestParam("businessId") String businessId,@RequestParam("description") String description,
			@RequestParam("extrat") String extrat,@RequestParam("money") Double money,@RequestParam("notifyUrl") String notifyUrl,
			@RequestParam("payType") String payType, 
			@RequestParam("randomString") String randomString, @RequestParam("sign") String sign){
		try{
			//判断参数是否为空
			if(StringUtils.isBlank(randomString)){
				NbResultVO result = new NbResultVO(1,"randomString is null");
				return result;
			}
			if(StringUtils.isBlank(sign)){
				NbResultVO result = new NbResultVO(1,"sign is null");
				return result;
			}
			NbBusiness business = nbBusinessService.get(businessId);
			String checkSign = DigestUtils.md5Hex(DigestUtils.md5Hex(Global.getConfig("domain") + "/pay/getway/" + randomString) + business.getSecretKey());
			if(!checkSign.equals(sign)){
				NbResultVO result = new NbResultVO(1,"签名错误");
				return result;
			}
			if(StringUtils.isBlank(businessOrderId)){
				NbResultVO result = new NbResultVO(1,"businessOrderId is null");
				return result;
			}
			if(StringUtils.isBlank(businessId)){
				NbResultVO result = new NbResultVO(1,"businessId is null");
				return result;
			}
			if(StringUtils.isBlank(description)){
				NbResultVO result = new NbResultVO(1,"description is null");
				return result;
			}
			if(StringUtils.isBlank(extrat)){
				NbResultVO result = new NbResultVO(1,"extrat is null");
				return result;
			}
			if(null == money){
				NbResultVO result = new NbResultVO(1,"money is null");
				return result;
			}
			if(StringUtils.isBlank(notifyUrl)){
				NbResultVO result = new NbResultVO(1,"notifyUrl is null");
				return result;
			}
			if(StringUtils.isBlank(payType)){
				NbResultVO result = new NbResultVO(1,"payType is null");
				return result;
			}
			
			
			
			
			String alipayUrl = "";
			String qrcode = "";
			//获取支付宝账号id 生成支付url
			NbAliAccountPool account = nbAliAccountPoolService.queryBestAccount();
			if(null != account){
				@NotBlank(message = "支付宝userId不能为空")
				@Length(min = 0, max = 64, message = "支付宝userId长度不能超过 64 个字符")
				String userid = account.getUserid();
				Map<String, Object> map = PayUtils.getAlipayUrl(userid, description, money);
				alipayUrl = (String) map.get("url");
				qrcode = (String) map.get("qrcode");
				
				NbOrder nbOrder =new NbOrder();
				nbOrder.setCreateTime(new Date());
				nbOrder.setUpdateTime(new Date());
				nbOrder.setBusinessId(businessId);
				nbOrder.setBusinessOrderId(businessOrderId);
				nbOrder.setDescription(description);
				nbOrder.setExtrat(extrat);
				nbOrder.setMoney(money);
				nbOrder.setNotifyUrl(notifyUrl);
				nbOrder.setPayType(payType);
				nbOrder.setStatus(Global.NO);//创建订单时状态为未支付
				nbOrder.setRealMoney(Double.valueOf(map.get("realMoney").toString()));
				nbOrder.setAliuserId(map.get("aliUserId").toString());
				// 对应到监听App的唯一签名
				nbOrder.setCallbackSign(map.get("aliUserId")+"_"+map.get("realMoney"));
				nbOrderService.save(nbOrder);
				//权重减一
				account.setWeight(account.getWeight()-1);
				nbAliAccountPoolService.update(account);
				
				NbAliAccountPool nbAliAccountPool = new NbAliAccountPool();
				nbAliAccountPool.setUserid(String.valueOf(map.get("aliUserId")));
				nbAliAccountPool = nbAliAccountPoolService.findByAlipayUserId(nbAliAccountPool);
				nbAliAccountPool.setLastTime(new Date());
				nbAliAccountPoolService.update(nbAliAccountPool);
			}
			if(StringUtils.isNoneBlank(alipayUrl)){
				//给商户返回支付连接
				NbResultVO result = new NbResultVO();
				result.setStatus(0);
				result.setBusinessId(businessId);
				result.setAlipayUrl(alipayUrl);
				result.setQrcode(qrcode);
				return result;
			}
			
		}catch(Exception e){
			log.error(e.getMessage());
			e.printStackTrace();
			NbResultVO result = new NbResultVO(1,e.getMessage());
			return result;
		}
		return null;
		
	}
	
	/**
	 * 商户请求查询订单接口
	 * @param businessOrderId 用户订单编号
	 * @param businessId 商户编号
	 */
	@RequestMapping("order/query")
	@ResponseBody
	public NbResultVO businessGetOrder(@RequestParam("businessOrderId") String businessOrderId,
			@RequestParam("businessId") String businessId, 
			@RequestParam("randomString") String randomString, @RequestParam("sign") String sign){
		try{
			//判断参数是否为空
			if(StringUtils.isBlank(randomString)){
				NbResultVO result = new NbResultVO(1,"randomString is null");
				return result;
			}
			if(StringUtils.isBlank(sign)){
				NbResultVO result = new NbResultVO(1,"sign is null");
				return result;
			}
			NbBusiness business = nbBusinessService.get(businessId);
			String checkSign = DigestUtils.md5Hex(DigestUtils.md5Hex(Global.getConfig("domain") + "/pay/order/query/" + randomString) + business.getSecretKey());
			if(!checkSign.equals(sign)){
				NbResultVO result = new NbResultVO(1,"签名错误");
				return result;
			}
			 
			if(StringUtils.isBlank(businessOrderId)){
				NbResultVO result = new NbResultVO(1,"businessOrderId is null");
				return result;
			}
			if(StringUtils.isBlank(businessId)){
				NbResultVO result = new NbResultVO(1,"businessId is null");
				return result;
			}
			
			NbOrder nbOrder =new NbOrder();
			nbOrder.setBusinessId(businessId);
			nbOrder.setBusinessOrderId(businessOrderId);
			nbOrder = nbOrderService.businessFindOrder(nbOrder);
			
			if(nbOrder!=null){
				//给商户返回订单信息
				NbResultVO result = new NbResultVO();
				result.setMessage(nbOrder);
				if(Global.YES.equals(nbOrder.getStatus())){
					result.setStatus(0);//支付成功
					result.setErrorMsg("支付成功");
				}else{
					result.setStatus(1);//支付失败
					result.setErrorMsg("支付失败");
				}
				return result;
			}else{
				NbResultVO result = new NbResultVO(1,"订单不存在");
				return result;
			}
			
		}catch(Exception e){
			log.error(e.getMessage());
			e.printStackTrace();
			NbResultVO result = new NbResultVO(1,e.getMessage());
			return result;
		}
		
	}
	
}
