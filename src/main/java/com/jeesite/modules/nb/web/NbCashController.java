/**
 * Copyright (c) 2013-Now http://jeesite.com All rights reserved.
 */
package com.jeesite.modules.nb.web;

import java.util.Date;
import java.util.List;

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
import com.jeesite.modules.nb.entity.NbCard;
import com.jeesite.modules.nb.entity.NbCash;
import com.jeesite.modules.nb.service.NbCardService;
import com.jeesite.modules.nb.service.NbCashService;
import com.jeesite.modules.sys.utils.UserUtils;

/**
 * 提现记录Controller
 * @author nb group
 * @version 2019-05-27
 */
@Controller
@RequestMapping(value = "${adminPath}/nb/nbCash")
public class NbCashController extends BaseController {
	
	@Autowired
	private NbCardService nbCardService;

	@Autowired
	private NbCashService nbCashService;
	
	/**
	 * 获取数据
	 */
	@ModelAttribute
	public NbCash get(String id, boolean isNewRecord) {
		return nbCashService.get(id, isNewRecord);
	}
	
	/**
	 * 查询列表
	 */
	@RequiresPermissions("nb:nbCash:view")
	@RequestMapping(value = {"list", ""})
	public String list(NbCash nbCash, Model model) {
		model.addAttribute("nbCash", nbCash);
		return "modules/nb/nbCashList";
	}
	
	/**
	 * 查询列表数据
	 */
	@RequiresPermissions("nb:nbCash:view")
	@RequestMapping(value = "listData")
	@ResponseBody
	public Page<NbCash> listData(NbCash nbCash, HttpServletRequest request, HttpServletResponse response) {
		String businessId = UserUtils.getUser().getLoginCode();
		nbCash.setBusinessId(businessId);
		nbCash.setPage(new Page<>(request, response));
		Page<NbCash> page = nbCashService.findPage(nbCash);
		return page;
	}
	
	/**
	 * 查询列表
	 */
	@RequiresPermissions("nb:nbCash:view")
	@RequestMapping(value = {"listBack"})
	public String listBack(NbCash nbCash, Model model) {
		model.addAttribute("nbCash", nbCash);
		return "modules/nb/nbCashListBack";
	}
	
	/**
	 * 查询列表数据
	 */
	@RequiresPermissions("nb:nbCash:view")
	@RequestMapping(value = "listDataBack")
	@ResponseBody
	public Page<NbCash> listDataBack(NbCash nbCash, HttpServletRequest request, HttpServletResponse response) {
		nbCash.setPage(new Page<>(request, response));
		Page<NbCash> page = nbCashService.findPage(nbCash);
		return page;
	}

	/**
	 * 查看编辑表单
	 */
	@RequiresPermissions("nb:nbCash:view")
	@RequestMapping(value = "form")
	public String form(NbCash nbCash, Model model) {
		
		NbCard nbCard = new NbCard();
		String businessId = UserUtils.getUser().getLoginCode();
		nbCard.setBusinessId(businessId);
		List<NbCard> list = nbCardService.findList(nbCard);
		model.addAttribute("list", list);
		model.addAttribute("nbCash", nbCash);
		return "modules/nb/nbCashForm";
	}
	
	/**
	 * 管理人员查看编辑表单
	 */
	@RequiresPermissions("nb:nbCash:view")
	@RequestMapping(value = "form2")
	public String form2(NbCash nbCash, Model model) {
		NbCard nbCard = new NbCard();
		String businessId = UserUtils.getUser().getLoginCode();
		List<NbCard> list = nbCardService.findList(nbCard);
		model.addAttribute("list", list);
		model.addAttribute("nbCash", nbCash);
		return "modules/nb/nbCashForm";
	}

	/**
	 * 保存提现记录
	 */
	@RequiresPermissions("nb:nbCash:edit")
	@PostMapping(value = "save")
	@ResponseBody
	public String save(@Validated NbCash nbCash) {
		if(nbCash.getIsNewRecord()){
			String businessId = UserUtils.getUser().getLoginCode();
			nbCash.setBusinessId(businessId);
			nbCash.setCreateTime(new Date());
		}
		nbCashService.save(nbCash);
		return renderResult(Global.TRUE, text("保存提现记录成功！"));
	}
	
	/**
	 * 删除提现记录
	 */
	@RequiresPermissions("nb:nbCash:edit")
	@RequestMapping(value = "delete")
	@ResponseBody
	public String delete(NbCash nbCash) {
		nbCashService.delete(nbCash);
		return renderResult(Global.TRUE, text("删除提现记录成功！"));
	}
	
}