package com.jeesite.modules.demo;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jeesite.common.config.Global;
import com.jeesite.modules.nb.entity.NbBusiness;
import com.jeesite.modules.nb.service.NbBusinessService;
import com.jeesite.modules.sys.utils.UserUtils;

@Controller
@RequestMapping(value = "/predemo")
public class PreDemoController {
	
	@Autowired
	private NbBusinessService nbBusinessService;

	/**
	 * 测试界面入口
	 * @return
	 */
	@RequestMapping(value = "")
	public String index(Model model) {
		model.addAttribute("domain", Global.getConfig("domain"));
		model.addAttribute("testBussinessId", Global.getConfig("testBussinessId"));
		NbBusiness business = nbBusinessService.get(Global.getConfig("testBussinessId"));
		model.addAttribute("nbBusiness", business);
		String sign1 = DigestUtils.md5Hex(DigestUtils.md5Hex(Global.getConfig("domain") + "/pay/getway/" + "abcd") + business.getSecretKey());
		model.addAttribute("sign1", sign1);
		return "modules/demo/index";
	}
	
	/**
	 * 测试界面入口
	 * @return
	 */
	@RequestMapping(value = "getway")
	public Object getway() {
		return null;
	}
	
}
