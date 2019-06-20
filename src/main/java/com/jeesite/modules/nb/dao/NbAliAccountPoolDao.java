/**
 * Copyright (c) 2013-Now http://jeesite.com All rights reserved.
 */
package com.jeesite.modules.nb.dao;

import com.jeesite.common.dao.CrudDao;
import com.jeesite.common.mybatis.annotation.MyBatisDao;
import com.jeesite.modules.nb.entity.NbAliAccountPool;

/**
 * 支付宝收款账户DAO接口
 * @author nb group
 */
@MyBatisDao
public interface NbAliAccountPoolDao extends CrudDao<NbAliAccountPool> {
	public NbAliAccountPool selectBestAcount();
	
	/**
	 * 根据ali的收款账号userId查询对象
	 * @param nbAliAccountPool
	 * @return
	 */
	public NbAliAccountPool findByAlipayUserId(NbAliAccountPool nbAliAccountPool);
}