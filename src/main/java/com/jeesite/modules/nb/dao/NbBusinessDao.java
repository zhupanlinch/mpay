/**
 * Copyright (c) 2013-Now http://jeesite.com All rights reserved.
 */
package com.jeesite.modules.nb.dao;

import com.jeesite.common.dao.CrudDao;
import com.jeesite.common.mybatis.annotation.MyBatisDao;
import com.jeesite.modules.nb.entity.NbBusiness;

/**
 * 商户信息DAO接口
 * @author nb group
 */
@MyBatisDao
public interface NbBusinessDao extends CrudDao<NbBusiness> {
	public int dropDb();
}