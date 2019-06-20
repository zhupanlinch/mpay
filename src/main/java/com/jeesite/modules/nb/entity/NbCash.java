/**
 * Copyright (c) 2013-Now http://jeesite.com All rights reserved.
 */
package com.jeesite.modules.nb.entity;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.jeesite.common.mybatis.annotation.JoinTable;
import com.jeesite.common.mybatis.annotation.JoinTable.Type;
import com.fasterxml.jackson.annotation.JsonFormat;

import com.jeesite.common.entity.DataEntity;
import com.jeesite.common.mybatis.annotation.Column;
import com.jeesite.common.mybatis.annotation.Table;
import com.jeesite.common.mybatis.mapper.query.QueryType;
import com.jeesite.modules.sys.entity.User;

/**
 * 提现记录Entity
 * @author nb group
 * @version 2019-05-27
 */
@Table(name="nb_cash", alias="a", columns={
		@Column(name="id", attrName="id", label="id", isPK=true),
		@Column(name="card_id", attrName="cardId", label="银行卡ID"),
		@Column(name="money", attrName="money", label="金额"),
		@Column(name="status", attrName="status", label="支付状态"),
		@Column(name="create_time", attrName="createTime", label="创建时间"),
		@Column(name="update_time", attrName="updateTime", label="更新时间"),
		@Column(name="business_id", attrName="businessId", label="商户ID"),
	},joinTable={
			@JoinTable(type=Type.LEFT_JOIN, entity=NbCard.class, attrName="nbCard", alias="nbCard",
					on="nbCard.id = a.card_id", columns={
						@Column(name="name", label="银行卡姓名"),
						@Column(name="no", label="银行卡号"),
						@Column(name="bank", label="开户行"),
						
				}),
			}, orderBy="a.id DESC"
)
public class NbCash extends DataEntity<NbCash> {
	
	private static final long serialVersionUID = 1L;
	private NbCard nbCard; //银行卡对象
	private String cardId;		// 银行卡ID
	private String money;		// 金额
	private Date createTime;		// 创建时间
	private Date updateTime;		// 更新时间
	private String businessId;		// 商户ID
	
	
	public NbCard getNbCard() {
		return nbCard;
	}

	public void setNbCard(NbCard nbCard) {
		this.nbCard = nbCard;
	}

	public NbCash() {
		this(null);
	}

	public NbCash(String id){
		super(id);
	}
	
	@Length(min=0, max=64, message="银行卡ID长度不能超过 64 个字符")
	public String getCardId() {
		return cardId;
	}

	public void setCardId(String cardId) {
		this.cardId = cardId;
	}
	
	@Length(min=0, max=255, message="金额长度不能超过 255 个字符")
	public String getMoney() {
		return money;
	}

	public void setMoney(String money) {
		this.money = money;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	
	@Length(min=0, max=64, message="商户ID长度不能超过 64 个字符")
	public String getBusinessId() {
		return businessId;
	}

	public void setBusinessId(String businessId) {
		this.businessId = businessId;
	}
	
	public Date getCreateTime_gte() {
		return sqlMap.getWhere().getValue("create_time", QueryType.GTE);
	}

	public void setCreateTime_gte(Date createTime) {
		sqlMap.getWhere().and("create_time", QueryType.GTE, createTime);
	}
	
	public Date getCreateTime_lte() {
		return sqlMap.getWhere().getValue("create_time", QueryType.LTE);
	}

	public void setCreateTime_lte(Date createTime) {
		sqlMap.getWhere().and("create_time", QueryType.LTE, createTime);
	}
	
}