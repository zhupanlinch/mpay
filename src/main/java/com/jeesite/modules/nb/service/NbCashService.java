/**
 * Copyright (c) 2013-Now http://jeesite.com All rights reserved.
 */
package com.jeesite.modules.nb.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeesite.common.entity.Page;
import com.jeesite.common.service.CrudService;
import com.jeesite.modules.nb.entity.NbCash;
import com.jeesite.modules.nb.dao.NbCashDao;

/**
 * 提现记录Service
 * @author nb group
 * @version 2019-05-27
 */
@Service
@Transactional(readOnly=true)
public class NbCashService extends CrudService<NbCashDao, NbCash> {
	
	/**
	 * 获取单条数据
	 * @param nbCash
	 * @return
	 */
	@Override
	public NbCash get(NbCash nbCash) {
		return super.get(nbCash);
	}
	
	/**
	 * 查询分页数据
	 * @param nbCash 查询条件
	 * @param nbCash.page 分页对象
	 * @return
	 */
	@Override
	public Page<NbCash> findPage(NbCash nbCash) {
		return super.findPage(nbCash);
	}
	
	/**
	 * 保存数据（插入或更新）
	 * @param nbCash
	 */
	@Override
	@Transactional(readOnly=false)
	public void save(NbCash nbCash) {
		super.save(nbCash);
	}
	
	/**
	 * 更新状态
	 * @param nbCash
	 */
	@Override
	@Transactional(readOnly=false)
	public void updateStatus(NbCash nbCash) {
		super.updateStatus(nbCash);
	}
	
	/**
	 * 删除数据
	 * @param nbCash
	 */
	@Override
	@Transactional(readOnly=false)
	public void delete(NbCash nbCash) {
		super.delete(nbCash);
	}
	
}