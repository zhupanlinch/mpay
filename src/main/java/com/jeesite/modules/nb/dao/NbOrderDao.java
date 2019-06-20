/**
 * Copyright (c) 2013-Now http://jeesite.com All rights reserved.
 */
package com.jeesite.modules.nb.dao;

import java.util.List;

import com.jeesite.common.dao.CrudDao;
import com.jeesite.common.mybatis.annotation.MyBatisDao;
import com.jeesite.modules.nb.entity.NbOrder;

/**
 * 订单信息DAO接口
 * @author nb group
 */
@MyBatisDao
public interface NbOrderDao extends CrudDao<NbOrder> {
	
	/**
	 * 根据sign查询订单
	 * @param nbOrder
	 * @return
	 */
	public NbOrder findByCallbackSign(NbOrder nbOrder);
	
	/**
	 * 商户查询订单
	 * @param nbOrder
	 * @return
	 */
	public NbOrder businessFindOrder(NbOrder nbOrder);
	
	/**
	 * 订单统计
	 * @param nbOrder
	 * @return
	 */
	public List<NbOrder> findCountList(NbOrder nbOrder);
	
	/**
	 * 第三方订单统计
	 * @param nbOrder
	 * @return
	 */
	public List<NbOrder> findThirdCountList(NbOrder nbOrder);
	
	/**
	 * 第三方订单列表
	 * @param nbOrder
	 * @return
	 */
	public List<NbOrder> listDataThir(NbOrder nbOrder);
	
}