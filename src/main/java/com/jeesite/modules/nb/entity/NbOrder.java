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

/**
 * 订单信息Entity
 * @author nb group
 */
@Table(name="nb_order", alias="a", columns={
		@Column(name="id", attrName="id", label="订单编号", isPK=true),
		@Column(name="business_id", attrName="businessId", label="商户编号"),
		@Column(name="business_order_id", attrName="businessOrderId", label="商户订单号"),
		@Column(name="description", attrName="description", label="商品描述"),
		@Column(name="extrat", attrName="extrat", label="商品附加信息"),
		@Column(name="money", attrName="money", label="总金额"),
		@Column(name="real_money", attrName="realMoney", label="实际付款金额"),
		@Column(name="notify_url", attrName="notifyUrl", label="通知地址"),
		@Column(name="status", attrName="status", label="支付状态"),
		@Column(name="pay_type", attrName="payType", label="支付方式"),
		@Column(name="create_time", attrName="createTime", label="创建时间"),
		@Column(name="update_time", attrName="updateTime", label="更新时间"),
		@Column(name="pay_time", attrName="payTime", label="付款时间"),
		@Column(name="callback_sign", attrName="callbackSign", label="监听订单签名"),
		@Column(name="aliuser_id", attrName="aliuserId", label="收款账号uerId"),
	}, joinTable={
			@JoinTable(type=Type.LEFT_JOIN, entity=NbAliAccountPool.class, attrName="nbAliAccountPool", alias="b",
					on="b.userid = a.aliuser_id", columns={
						@Column(name="phone", label="收款姓名")
				}),
			}, orderBy="a.id DESC"
)
public class NbOrder extends DataEntity<NbOrder> {
	
	private static final long serialVersionUID = 1L;
	private String businessId;		// 商户编号
	private String businessOrderId;		// 商户订单号
	private String description;		// 商品描述
	private String extrat;		// 商品附加信息
	private Double money;		// 总金额
	private Double realMoney;		// 实际付款金额
	private String notifyUrl;		// 通知地址
	private String payType;		// 支付方式
	private Date createTime;		// 创建时间
	private Date updateTime;		// 更新时间
	private Date payTime;		// 付款时间
	private String callbackSign;  //监听订单签名
	private String aliuserId;  //收款账号uerId
	private String rate;  //费率
	private NbAliAccountPool nbAliAccountPool;  //费率
	
	public NbOrder() {
		this(null);
	}

	public NbOrder(String id){
		super(id);
	}
	
	@Length(min=0, max=64, message="商户编号长度不能超过 64 个字符")
	public String getBusinessId() {
		return businessId;
	}

	public void setBusinessId(String businessId) {
		this.businessId = businessId;
	}
	
	@Length(min=0, max=64, message="商户订单号长度不能超过 64 个字符")
	public String getBusinessOrderId() {
		return businessOrderId;
	}

	public void setBusinessOrderId(String businessOrderId) {
		this.businessOrderId = businessOrderId;
	}
	
	@Length(min=0, max=255, message="商品描述长度不能超过 255 个字符")
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	@Length(min=0, max=255, message="商品附加信息长度不能超过 255 个字符")
	public String getExtrat() {
		return extrat;
	}

	public void setExtrat(String extrat) {
		this.extrat = extrat;
	}
	
	public Double getMoney() {
		return money;
	}

	public void setMoney(Double money) {
		this.money = money;
	}
	
	public Double getRealMoney() {
		return realMoney;
	}

	public void setRealMoney(Double realMoney) {
		this.realMoney = realMoney;
	}
	
	@Length(min=0, max=255, message="通知地址长度不能超过 255 个字符")
	public String getNotifyUrl() {
		return notifyUrl;
	}

	public void setNotifyUrl(String notifyUrl) {
		this.notifyUrl = notifyUrl;
	}
	
	@Length(min=0, max=32, message="支付方式长度不能超过 32 个字符")
	public String getPayType() {
		return payType;
	}

	public void setPayType(String payType) {
		this.payType = payType;
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
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getPayTime() {
		return payTime;
	}

	public void setPayTime(Date payTime) {
		this.payTime = payTime;
	}

	public String getCallbackSign() {
		return callbackSign;
	}

	public void setCallbackSign(String callbackSign) {
		this.callbackSign = callbackSign;
	}

	public String getAliuserId() {
		return aliuserId;
	}

	public void setAliuserId(String aliuserId) {
		this.aliuserId = aliuserId;
	}

	public String getRate() {
		return rate;
	}

	public void setRate(String rate) {
		this.rate = rate;
	}

	public NbAliAccountPool getNbAliAccountPool() {
		return nbAliAccountPool;
	}

	public void setNbAliAccountPool(NbAliAccountPool nbAliAccountPool) {
		this.nbAliAccountPool = nbAliAccountPool;
	}
	
	
}