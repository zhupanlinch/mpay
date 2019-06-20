/**
 * Copyright (c) 2013-Now http://jeesite.com All rights reserved.
 */
package com.jeesite.modules.nb.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeesite.common.entity.Page;
import com.jeesite.common.service.CrudService;
import com.jeesite.modules.nb.entity.NbOrder;
import com.jeesite.modules.nb.dao.NbOrderDao;

/**
 * 订单信息Service
 * @author nb group
 */
@Service
@Transactional(readOnly=true)
public class NbOrderService extends CrudService<NbOrderDao, NbOrder> {
	
	/**
	 * 获取单条数据
	 * @param nbOrder
	 * @return
	 */
	@Override
	public NbOrder get(NbOrder nbOrder) {
		return super.get(nbOrder);
	}
	
	/**
	 * 查询分页数据
	 * @param nbOrder 查询条件
	 * @param nbOrder.page 分页对象
	 * @return
	 */
	@Override
	public Page<NbOrder> findPage(NbOrder nbOrder) {
		return super.findPage(nbOrder);
	}
	
	/**
	 * 保存数据（插入或更新）
	 * @param nbOrder
	 */
	@Override
	@Transactional(readOnly=false)
	public void save(NbOrder nbOrder) {
		super.save(nbOrder);
	}
	
	/**
	 * 更新状态
	 * @param nbOrder
	 */
	@Override
	@Transactional(readOnly=false)
	public void updateStatus(NbOrder nbOrder) {
		super.updateStatus(nbOrder);
	}
	
	/**
	 * 删除数据
	 * @param nbOrder
	 */
	@Override
	@Transactional(readOnly=false)
	public void delete(NbOrder nbOrder) {
		super.delete(nbOrder);
	}
	
	/**
	 * 根据sign查询订单
	 * @param nbOrder
	 * @return
	 */
	public NbOrder findByCallbackSign(NbOrder nbOrder){
		return dao.findByCallbackSign(nbOrder);
	}
	
	/**
	 * 商户查询订单
	 * @param nbOrder
	 * @return
	 */
	public NbOrder businessFindOrder(NbOrder nbOrder){
		return dao.businessFindOrder(nbOrder);
	}
	
	public Page<NbOrder> findCountList(Page<NbOrder> page, NbOrder nbOrder){
		page.setList(dao.findCountList(nbOrder));
		return page;
	}
	/**
	 * 第三方查询 数据
	 * @param page
	 * @param nbOrder
	 * @return
	 */
	public Page<NbOrder> findThirdCountList(Page<NbOrder> page, NbOrder nbOrder){
		page.setList(dao.findThirdCountList(nbOrder));
		return page;
	}
	
	/**
	 * 第三方查询 数据列表
	 * @param page
	 * @param nbOrder
	 * @return
	 */
	public Page<NbOrder> listDataThir(Page page, NbOrder nbOrder){
		page.setList(dao.listDataThir(nbOrder));
		return page;
	}
}