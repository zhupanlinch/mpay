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
import com.jeesite.modules.nb.entity.NbCard;
import com.jeesite.modules.nb.service.NbCardService;
import com.jeesite.modules.sys.utils.UserUtils;

/**
 * 商户银行卡Controller
 * @author nb group
 * @version 2019-05-27
 */
@Controller
@RequestMapping(value = "${adminPath}/nb/nbCard")
public class NbCardController extends BaseController {

	@Autowired
	private NbCardService nbCardService;
	
	/**
	 * 获取数据
	 */
	@ModelAttribute
	public NbCard get(String id, boolean isNewRecord) {
		return nbCardService.get(id, isNewRecord);
	}
	
	/**
	 * 查询列表
	 */
	@RequiresPermissions("nb:nbCard:view")
	@RequestMapping(value = {"list", ""})
	public String list(NbCard nbCard, Model model) {
		model.addAttribute("nbCard", nbCard);
		return "modules/nb/nbCardList";
	}
	
	/**
	 * 查询列表数据
	 */
	@RequiresPermissions("nb:nbCard:view")
	@RequestMapping(value = "listData")
	@ResponseBody
	public Page<NbCard> listData(NbCard nbCard, HttpServletRequest request, HttpServletResponse response) {
		String businessId = UserUtils.getUser().getLoginCode();
		nbCard.setBusinessId(businessId);
		nbCard.setPage(new Page<>(request, response));
		Page<NbCard> page = nbCardService.findPage(nbCard);
		return page;
	}

	/**
	 * 查看编辑表单
	 */
	@RequiresPermissions("nb:nbCard:view")
	@RequestMapping(value = "form")
	public String form(NbCard nbCard, Model model) {
		model.addAttribute("nbCard", nbCard);
		return "modules/nb/nbCardForm";
	}

	/**
	 * 保存商户银行卡
	 */
	@RequiresPermissions("nb:nbCard:edit")
	@PostMapping(value = "save")
	@ResponseBody
	public String save(@Validated NbCard nbCard) {
		String businessId = UserUtils.getUser().getLoginCode();
		nbCard.setBusinessId(businessId);
		nbCardService.save(nbCard);
		return renderResult(Global.TRUE, text("保存商户银行卡成功！"));
	}
	
	/**
	 * 删除商户银行卡
	 */
	@RequiresPermissions("nb:nbCard:edit")
	@RequestMapping(value = "delete")
	@ResponseBody
	public String delete(NbCard nbCard) {
		nbCardService.delete(nbCard);
		return renderResult(Global.TRUE, text("删除商户银行卡成功！"));
	}
	
}