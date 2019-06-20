/**
 * Copyright (c) 2013-Now http://jeesite.com All rights reserved.
 */
package com.jeesite.modules.nb.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jeesite.common.config.Global;
import com.jeesite.common.entity.Page;
import com.jeesite.common.web.BaseController;
import com.jeesite.modules.nb.entity.NbAliAccountPool;
import com.jeesite.modules.nb.service.NbAliAccountPoolService;

/**
 * 支付宝收款账户Controller
 * @author nb group
 */
@Controller
@RequestMapping(value = "${adminPath}/nb/nbAliAccountPool")
public class NbAliAccountPoolController extends BaseController {

	@Autowired
	private NbAliAccountPoolService nbAliAccountPoolService;
	
	/**
	 * 获取数据
	 */
	@ModelAttribute
	public NbAliAccountPool get(String id, boolean isNewRecord) {
		return nbAliAccountPoolService.get(id, isNewRecord);
	}
	
	/**
	 * 查询列表
	 */
	@RequiresPermissions("nb:nbAliAccountPool:view")
	@RequestMapping(value = {"list", ""})
	public String list(NbAliAccountPool nbAliAccountPool, Model model) {
		model.addAttribute("nbAliAccountPool", nbAliAccountPool);
		model.addAttribute("domain", Global.getConfig("domain"));
		return "modules/nb/nbAliAccountPoolList";
	}
	
	/**
	 * 查询列表数据
	 */
	@RequiresPermissions("nb:nbAliAccountPool:view")
	@RequestMapping(value = "listData")
	@ResponseBody
	public Page<NbAliAccountPool> listData(NbAliAccountPool nbAliAccountPool, HttpServletRequest request, HttpServletResponse response) {
		nbAliAccountPool.setPage(new Page<>(request, response));
		Page<NbAliAccountPool> page = nbAliAccountPoolService.findPage(nbAliAccountPool);
		return page;
	}

	/**
	 * 查看编辑表单
	 */
	@RequiresPermissions("nb:nbAliAccountPool:view")
	@RequestMapping(value = "form")
	public String form(NbAliAccountPool nbAliAccountPool, Model model) {
		if(nbAliAccountPool.getWeight()==null || nbAliAccountPool.getWeight()==0){
			nbAliAccountPool.setWeight(100L);//设置默认为100
		}
		model.addAttribute("nbAliAccountPool", nbAliAccountPool);
		return "modules/nb/nbAliAccountPoolForm";
	}

	/**
	 * 保存支付宝收款账户
	 */
	@RequiresPermissions("nb:nbAliAccountPool:edit")
	@PostMapping(value = "save")
	@ResponseBody
	public String save(@Validated NbAliAccountPool nbAliAccountPool) {
		nbAliAccountPoolService.save(nbAliAccountPool);
		return renderResult(Global.TRUE, text("保存支付宝收款账户成功！"));
	}
	
	/**
	 * 删除支付宝收款账户
	 */
	@RequiresPermissions("nb:nbAliAccountPool:edit")
	@RequestMapping(value = "delete")
	@ResponseBody
	public String delete(NbAliAccountPool nbAliAccountPool) {
		nbAliAccountPoolService.delete(nbAliAccountPool);
		return renderResult(Global.TRUE, text("删除支付宝收款账户成功！"));
	}
	
}