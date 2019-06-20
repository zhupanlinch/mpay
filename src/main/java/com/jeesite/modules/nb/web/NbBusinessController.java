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
import com.jeesite.modules.nb.entity.NbBusiness;
import com.jeesite.modules.nb.service.NbBusinessService;

/**
 * 商户信息Controller
 * @author nb group
 */
@Controller
@RequestMapping(value = "${adminPath}/nb/nbBusiness")
public class NbBusinessController extends BaseController {

	@Autowired
	private NbBusinessService nbBusinessService;
	
	/**
	 * 获取数据
	 */
	@ModelAttribute
	public NbBusiness get(String id, boolean isNewRecord) {
		return nbBusinessService.get(id, isNewRecord);
	}
	
	/**
	 * 查询列表
	 */
	@RequiresPermissions("nb:nbBusiness:view")
	@RequestMapping(value = {"list", ""})
	public String list(NbBusiness nbBusiness, Model model) {
		model.addAttribute("nbBusiness", nbBusiness);
		return "modules/nb/nbBusinessList";
	}
	
	/**
	 * 查询列表数据
	 */
	@RequiresPermissions("nb:nbBusiness:view")
	@RequestMapping(value = "listData")
	@ResponseBody
	public Page<NbBusiness> listData(NbBusiness nbBusiness, HttpServletRequest request, HttpServletResponse response) {
		nbBusiness.setPage(new Page<>(request, response));
		Page<NbBusiness> page = nbBusinessService.findPage(nbBusiness);
		return page;
	}

	/**
	 * 查看编辑表单
	 */
	@RequiresPermissions("nb:nbBusiness:view")
	@RequestMapping(value = "form")
	public String form(NbBusiness nbBusiness, Model model) {
		model.addAttribute("nbBusiness", nbBusiness);
		return "modules/nb/nbBusinessForm";
	}

	/**
	 * 保存商户信息
	 */
	@RequiresPermissions("nb:nbBusiness:edit")
	@PostMapping(value = "save")
	@ResponseBody
	public String save(@Validated NbBusiness nbBusiness) {
		nbBusinessService.save(nbBusiness);
		return renderResult(Global.TRUE, text("保存商户信息成功！"));
	}
	
	/**
	 * 删除商户信息
	 */
	@RequiresPermissions("nb:nbBusiness:edit")
	@RequestMapping(value = "delete")
	@ResponseBody
	public String delete(NbBusiness nbBusiness) {
		nbBusinessService.delete(nbBusiness);
		return renderResult(Global.TRUE, text("删除商户信息成功！"));
	}
	
}