/**
 * Copyright (c) 2013-Now http://jeesite.com All rights reserved.
 */
package com.jeesite.modules.nb.dao;

import com.jeesite.common.dao.CrudDao;
import com.jeesite.common.mybatis.annotation.MyBatisDao;
import com.jeesite.modules.nb.entity.NbCard;

/**
 * 商户银行卡DAO接口
 * @author nb group
 * @version 2019-05-27
 */
@MyBatisDao
public interface NbCardDao extends CrudDao<NbCard> {
	
}