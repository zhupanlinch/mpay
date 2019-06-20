package com.jeesite.modules.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jeesite.common.config.Global;

@Controller
@RequestMapping(value = "${adminPath}/help")
public class HelpController {

	/**
	 * 系统简介入口
	 * @return
	 */
	@RequestMapping(value = "info")
	public String info(Model model) {
		model.addAttribute("domain", Global.getConfig("domain"));
		return "modules/help/info";
	}
	
	/**
	 * 使用流程入口
	 * @return
	 */
	@RequestMapping(value = "flow")
	public String flow(Model model) {
		model.addAttribute("domain", Global.getConfig("domain"));
		return "modules/help/flow";
	}
	
	/**
	 * 后台使用帮助入口
	 * @return
	 */
	@RequestMapping(value = "back")
	public String back(Model model) {
		model.addAttribute("domain", Global.getConfig("domain"));
		return "modules/help/back";
	}
	
	/**
	 * 监控App使用帮助入口
	 * @return
	 */
	@RequestMapping(value = "app")
	public String app(Model model) {
		model.addAttribute("domain", Global.getConfig("domain"));
		return "modules/help/app";
	}
	
	/**
	 * 第三方接入接口使用帮助入口
	 * @return
	 */
	@RequestMapping(value = "api")
	public String api(Model model) {
		model.addAttribute("domain", Global.getConfig("domain"));
		return "modules/help/api";
	}
	
	/**
	 * 第三方接入接口使用帮助入口
	 * @return
	 */
	@RequestMapping(value = "licence")
	public String licence(Model model) {
		model.addAttribute("domain", Global.getConfig("domain"));
		return "modules/help/licence";
	}
}
