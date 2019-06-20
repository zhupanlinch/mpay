/**
 * Copyright (c) 2013-Now http://jeesite.com All rights reserved.
 */
package com.jeesite.modules.nb.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeesite.common.entity.Page;
import com.jeesite.common.service.CrudService;
import com.jeesite.modules.nb.entity.NbCard;
import com.jeesite.modules.nb.dao.NbCardDao;

/**
 * 商户银行卡Service
 * @author nb group
 * @version 2019-05-27
 */
@Service
@Transactional(readOnly=true)
public class NbCardService extends CrudService<NbCardDao, NbCard> {
	
	/**
	 * 获取单条数据
	 * @param nbCard
	 * @return
	 */
	@Override
	public NbCard get(NbCard nbCard) {
		return super.get(nbCard);
	}
	
	/**
	 * 查询分页数据
	 * @param nbCard 查询条件
	 * @param nbCard.page 分页对象
	 * @return
	 */
	@Override
	public Page<NbCard> findPage(NbCard nbCard) {
		return super.findPage(nbCard);
	}
	
	/**
	 * 保存数据（插入或更新）
	 * @param nbCard
	 */
	@Override
	@Transactional(readOnly=false)
	public void save(NbCard nbCard) {
		super.save(nbCard);
	}
	
	/**
	 * 更新状态
	 * @param nbCard
	 */
	@Override
	@Transactional(readOnly=false)
	public void updateStatus(NbCard nbCard) {
		super.updateStatus(nbCard);
	}
	
	/**
	 * 删除数据
	 * @param nbCard
	 */
	@Override
	@Transactional(readOnly=false)
	public void delete(NbCard nbCard) {
		super.delete(nbCard);
	}
	
}