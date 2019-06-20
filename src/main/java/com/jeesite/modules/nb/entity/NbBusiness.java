/**
 * Copyright (c) 2013-Now http://jeesite.com All rights reserved.
 */
package com.jeesite.modules.nb.entity;

import java.util.Date;

import javax.validation.constraints.NotBlank;
import org.hibernate.validator.constraints.Length;

import com.jeesite.common.entity.DataEntity;
import com.jeesite.common.mybatis.annotation.Column;
import com.jeesite.common.mybatis.annotation.Table;
import com.jeesite.common.mybatis.mapper.query.QueryType;

/**
 * 商户信息Entity
 * @author nb group
 */
@Table(name="nb_business", alias="a", columns={
		@Column(name="id", attrName="id", label="商户编号", isPK=true),
		@Column(name="name", attrName="name", label="商户名称", queryType=QueryType.LIKE),
		@Column(name="rate", attrName="rate", label="费率"),
		@Column(name="secret_key", attrName="secretKey", label="商户秘钥"),
	}, orderBy="a.id DESC"
)
public class NbBusiness extends DataEntity<NbBusiness> {
	
	private static final long serialVersionUID = 1L;
	private String name;		// 商户名称
	private Date startDate;     //开始时间
	private Date endDate;       //结束时间
	private String rate;       //费率
	private String secretKey;//商户秘钥
	
	public NbBusiness() {
		this(null);
	}

	public NbBusiness(String id){
		super(id);
	}
	
	@NotBlank(message="商户名称不能为空")
	@Length(min=0, max=255, message="商户名称长度不能超过 255 个字符")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getRate() {
		return rate;
	}

	public void setRate(String rate) {
		this.rate = rate;
	}

	public String getSecretKey() {
		return secretKey;
	}

	public void setSecretKey(String secretKey) {
		this.secretKey = secretKey;
	}
	
}