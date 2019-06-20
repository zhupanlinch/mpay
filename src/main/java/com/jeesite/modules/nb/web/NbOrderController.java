/**
 * Copyright (c) 2013-Now http://jeesite.com All rights reserved.
 */
package com.jeesite.modules.nb.web;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.jeesite.common.config.Global;
import com.jeesite.common.entity.Page;
import com.jeesite.common.lang.DateUtils;
import com.jeesite.common.web.BaseController;
import com.jeesite.common.web.http.HttpClientUtils;
import com.jeesite.modules.nb.entity.NbBusiness;
import com.jeesite.modules.nb.entity.NbOrder;
import com.jeesite.modules.nb.service.NbBusinessService;
import com.jeesite.modules.nb.service.NbOrderService;
import com.jeesite.modules.sys.utils.UserUtils;

/**
 * 订单信息Controller
 * @author nb group
 */
@Controller
@RequestMapping(value = "${adminPath}/nb/nbOrder")
public class NbOrderController extends BaseController {
	
	Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private NbOrderService nbOrderService;
	
	@Autowired
	private NbBusinessService nbBusinessService;
	
	/**
	 * 获取数据
	 */
	@ModelAttribute
	public NbOrder get(String id, boolean isNewRecord) {
		return nbOrderService.get(id, isNewRecord);
	}
	
	/**
	 * 查询列表
	 */
	@RequiresPermissions("nb:nbOrder:view")
	@RequestMapping(value = {"list", ""})
	public String list(NbOrder nbOrder, Model model) {
		model.addAttribute("nbOrder", nbOrder);
		return "modules/nb/nbOrderList";
	}
	
	/**
	 * 查询列表数据
	 */
	@RequiresPermissions("nb:nbOrder:view")
	@RequestMapping(value = "listData")
	@ResponseBody
	public Page<NbOrder> listData(NbOrder nbOrder, HttpServletRequest request, HttpServletResponse response) {
		nbOrder.setPage(new Page<>(request, response));
		Page<NbOrder> page = nbOrderService.findPage(nbOrder);
		return page;
	}

	/**
	 * 查看编辑表单
	 */
	@RequiresPermissions("nb:nbOrder:view")
	@RequestMapping(value = "form")
	public String form(NbOrder nbOrder, Model model) {
		model.addAttribute("nbOrder", nbOrder);
		return "modules/nb/nbOrderForm";
	}

	/**
	 * 保存订单信息
	 */
	@RequiresPermissions("nb:nbOrder:edit")
	@PostMapping(value = "save")
	@ResponseBody
	public String save(@Validated NbOrder nbOrder) {
		nbOrderService.save(nbOrder);
		log.info("手动回调开始 map Object================================");
		if(Global.YES.equals(nbOrder.getStatus())){
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
				//增加签名
				String str = UUID.randomUUID().toString();
				String randomString = str.split("-")[0];
				map.put("randomString", randomString);
				//获取商户
				NbBusiness nbBusiness = new NbBusiness();
				nbBusiness.setId(nbOrder.getBusinessId());
				NbBusiness tempBusiness = nbBusinessService.get(nbBusiness);
				String sign1 = DigestUtils.md5Hex(DigestUtils.md5Hex(nbOrder.getNotifyUrl() + randomString) + tempBusiness.getSecretKey());
				map.put("sign", sign1);
				//加密
				log.info("手动 map Object================================"+JSON.toJSONString(map));
				log.info("手动 callBack url================================"+nbOrder.getNotifyUrl());
				//回调
				String result = HttpClientUtils.post(nbOrder.getNotifyUrl(), map);
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
		}
		return renderResult(Global.TRUE, text("保存订单信息成功！"));
	}
	
	/**
	 * 删除订单信息
	 */
	@RequiresPermissions("nb:nbOrder:edit")
	@RequestMapping(value = "delete")
	@ResponseBody
	public String delete(NbOrder nbOrder) {
		nbOrderService.delete(nbOrder);
		return renderResult(Global.TRUE, text("删除订单信息成功！"));
	}
	
	/**
	 * 订单统计
	 */
	@RequiresPermissions("nb:nbOrder:view")
	@RequestMapping(value = "count")
	public String count(NbOrder nbOrder, Model model) {
		model.addAttribute("nbOrder", nbOrder);
		return "modules/nb/nbOrderCount";
	}
	
	/**
	 * 订单统计数据
	 */
	@RequiresPermissions("nb:nbOrder:view")
	@RequestMapping(value = "countData")
	@ResponseBody
	public Page<NbOrder> countData(NbOrder nbOrder, HttpServletRequest request, HttpServletResponse response) {
		Page<NbOrder> page = nbOrderService.findCountList(new Page<>(request, response), nbOrder);
		return page;
	}
	
	/**
	 * 第三方订单统计
	 */
	@RequiresPermissions("nb:nbOrder:view")
	@RequestMapping(value = "third")
	public String third(NbOrder nbOrder, Model model) {
		model.addAttribute("nbOrder", nbOrder);
		return "modules/nb/nbThirdOrderCount";
	}
	
	/**
	 * 第三方订单统计数据
	 */
	@RequiresPermissions("nb:nbOrder:view")
	@RequestMapping(value = "thirdCountData")
	@ResponseBody
	public Page<NbOrder> thirdCountData(NbOrder nbOrder, HttpServletRequest request, HttpServletResponse response) {
		String businessId = UserUtils.getUser().getLoginCode();
		nbOrder.setBusinessId(businessId);
		Page<NbOrder> page = nbOrderService.findThirdCountList(new Page<>(request, response), nbOrder);
		return page;
	}
	
	/**
	 * 查询列表
	 */
	@RequiresPermissions("nb:nbOrder:view")
	@RequestMapping(value = {"listThir"})
	public String listThir(NbOrder nbOrder, Model model) {
		model.addAttribute("nbOrder", nbOrder);
		return "modules/nb/nbOrderListThir";
	}
	
	/**
	 * 查询列表数据
	 */
	@RequiresPermissions("nb:nbOrder:view")
	@RequestMapping(value = "listDataThir")
	@ResponseBody
	public Page<NbOrder> listDataThir(NbOrder nbOrder, HttpServletRequest request, HttpServletResponse response) {
		String businessId = UserUtils.getUser().getLoginCode();
		nbOrder.setPage(new Page<>(request, response));
		nbOrder.setBusinessId(businessId);
		Page<NbOrder> page = nbOrderService.listDataThir(nbOrder.getPage(), nbOrder);
		return page;
	}
}