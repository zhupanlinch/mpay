package com.jeesite.modules.nb.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jeesite.common.config.Global;

@Controller
@RequestMapping(value = "${adminPath}/down")
public class DownAppController {
	
	/**
	 * 监听App下载
	 * @return
	 */
	@RequestMapping(value = "app")
	public Object app(Model model) {
		model.addAttribute("domain", Global.getConfig("domain"));
		return "modules/monitor/app";
	}

}
