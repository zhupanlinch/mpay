/**
 * Copyright (c) 2013-Now http://jeesite.com All rights reserved.
 */
package com.jeesite.modules.nb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeesite.common.entity.Page;
import com.jeesite.common.service.CrudService;
import com.jeesite.modules.nb.entity.NbAliAccountPool;
import com.jeesite.modules.nb.dao.NbAliAccountPoolDao;

/**
 * 支付宝收款账户Service
 * @author nb group
 */
@Service
@Transactional(readOnly=true)
public class NbAliAccountPoolService extends CrudService<NbAliAccountPoolDao, NbAliAccountPool> {
	
	@Autowired
	NbAliAccountPoolDao nbAliAccountPoolDao;
	/**
	 * 获取单条数据
	 * @param nbAliAccountPool
	 * @return
	 */
	@Override
	public NbAliAccountPool get(NbAliAccountPool nbAliAccountPool) {
		return super.get(nbAliAccountPool);
	}
	
	/**
	 * 查询分页数据
	 * @param nbAliAccountPool 查询条件
	 * @param nbAliAccountPool.page 分页对象
	 * @return
	 */
	@Override
	public Page<NbAliAccountPool> findPage(NbAliAccountPool nbAliAccountPool) {
		return super.findPage(nbAliAccountPool);
	}
	
	/**
	 * 保存数据（插入或更新）
	 * @param nbAliAccountPool
	 */
	@Override
	@Transactional(readOnly=false)
	public void save(NbAliAccountPool nbAliAccountPool) {
		super.save(nbAliAccountPool);
	}
	
	/**
	 * 更新状态
	 * @param nbAliAccountPool
	 */
	@Override
	@Transactional(readOnly=false)
	public void updateStatus(NbAliAccountPool nbAliAccountPool) {
		super.updateStatus(nbAliAccountPool);
	}
	
	/**
	 * 删除数据
	 * @param nbAliAccountPool
	 */
	@Override
	@Transactional(readOnly=false)
	public void delete(NbAliAccountPool nbAliAccountPool) {
		nbAliAccountPoolDao.delete(nbAliAccountPool);
	}
	/**
	 * 获取最优账号
	 */
	@Transactional(readOnly=false)
	public NbAliAccountPool queryBestAccount() {
		return nbAliAccountPoolDao.selectBestAcount();
	}
	
	/**
	 * 根据ali的收款账号userId查询对象
	 * @param nbAliAccountPool
	 * @return
	 */
	public NbAliAccountPool findByAlipayUserId(NbAliAccountPool nbAliAccountPool){
		return dao.findByAlipayUserId(nbAliAccountPool);
	}
}