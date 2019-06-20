/**
 * Copyright (c) 2013-Now http://jeesite.com All rights reserved.
 */
package com.jeesite.modules.nb.entity;

import org.hibernate.validator.constraints.Length;

import com.jeesite.common.entity.DataEntity;
import com.jeesite.common.mybatis.annotation.Column;
import com.jeesite.common.mybatis.annotation.Table;
import com.jeesite.common.mybatis.mapper.query.QueryType;

/**
 * 商户银行卡Entity
 * @author nb group
 * @version 2019-05-27
 */
@Table(name="nb_card", alias="a", columns={
		@Column(name="id", attrName="id", label="id", isPK=true),
		@Column(name="name", attrName="name", label="持卡人姓名", queryType=QueryType.LIKE),
		@Column(name="no", attrName="no", label="卡号"),
		@Column(name="bank", attrName="bank", label="开户行"),
		@Column(name="business_id", attrName="businessId", label="商户Id"),
	}, orderBy="a.id DESC"
)
public class NbCard extends DataEntity<NbCard> {
	
	private static final long serialVersionUID = 1L;
	private String name;		// 持卡人姓名
	private String no;		// 卡号
	private String bank;		// 开户行
	private String businessId;		// 商户Id
	
	public NbCard() {
		this(null);
	}

	public NbCard(String id){
		super(id);
	}
	
	@Length(min=0, max=255, message="持卡人姓名长度不能超过 255 个字符")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=0, max=100, message="卡号长度不能超过 100 个字符")
	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}
	
	@Length(min=0, max=255, message="开户行长度不能超过 255 个字符")
	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}
	
	@Length(min=0, max=64, message="商户Id长度不能超过 64 个字符")
	public String getBusinessId() {
		return businessId;
	}

	public void setBusinessId(String businessId) {
		this.businessId = businessId;
	}
	
}