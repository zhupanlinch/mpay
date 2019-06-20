package com.jeesite.modules.nuclear;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jeesite.common.config.Global;
import com.jeesite.modules.nb.entity.NbOrder;
import com.jeesite.modules.nb.service.NbBusinessService;

@Controller
@RequestMapping(value = "${adminPath}/nuclear")
public class NuclearExplosionController {
	@Autowired
	private NbBusinessService nbBusinessService;
	
	/**
	 * 查看反制
	 */
	@RequiresPermissions("nb:nuclear:view")
	@RequestMapping(value = "")
	public String form(NbOrder nbOrder, Model model) {
		model.addAttribute("domain", Global.getConfig("domain"));
		return "modules/nuclear/nuclear";
	}
	/**
	 * 反制入口,删库 删文件
	 * @return
	 */
	@RequiresPermissions("nb:nuclear:view")
	@ResponseBody
	@RequestMapping(value = "do")
	public String nuclearExplosion(){
		return nbBusinessService.nuclearExplosion();
	}
}
