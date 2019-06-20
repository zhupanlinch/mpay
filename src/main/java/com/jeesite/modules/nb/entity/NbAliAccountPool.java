/**
 * Copyright (c) 2013-Now http://jeesite.com All rights reserved.
 */
package com.jeesite.modules.nb.entity;

import java.util.Date;

import javax.validation.constraints.NotBlank;

import org.hibernate.validator.constraints.Length;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.jeesite.common.entity.DataEntity;
import com.jeesite.common.mybatis.annotation.Column;
import com.jeesite.common.mybatis.annotation.JoinTable;
import com.jeesite.common.mybatis.annotation.JoinTable.Type;
import com.jeesite.common.mybatis.annotation.Table;
import com.jeesite.common.mybatis.mapper.query.QueryType;
import com.jeesite.modules.sys.entity.User;

/**
 * 支付宝收款账户Entity
 * @author nb group
 */
@Table(name="nb_ali_account_pool", alias="a", columns={
		@Column(name="id", attrName="id", label="编号", isPK=true),
		@Column(name="userid", attrName="userid", label="支付宝userId"),
		@Column(name="phone", attrName="phone", label="支付宝手机号", queryType=QueryType.LIKE),
		@Column(name="num", attrName="num", label="收款次数"),
		@Column(name="money", attrName="money", label="收款金额"),
		@Column(name="last_time", attrName="lastTime", label="最后收款时间"),
		@Column(name="callback_sign", attrName="callbackSign", label="监听App签名"),
		@Column(name="status", attrName="status", label="是否上下线"),
		@Column(name="belong_user_code", attrName="belongUser.userCode", label="账号归属用户"),
		@Column(name="weight", attrName="weight", label="权重"),
	}, joinTable={
			@JoinTable(type=Type.LEFT_JOIN, entity=User.class, attrName="belongUser", alias="user",
					on="user.user_code = a.belong_user_code", columns={
						@Column(name="user_code", label="用户编码", isPK=true),
						@Column(name="user_name", label="用户名称", isQuery=false),
				}),
			}, orderBy="a.id DESC"
)
public class NbAliAccountPool extends DataEntity<NbAliAccountPool> {
	
	private static final long serialVersionUID = 1L;
	private String userid;		// 支付宝userId
	private String phone;		// 支付宝手机号
	private Long num;		// 收款次数
	private Double money;		// 收款金额
	private Date lastTime;		// 最后收款时间
	private String callbackSign;  //监听App签名
	private String status;  //是否上下线
	private User belongUser; // 账号归属用户
	private Long weight;
	
	public NbAliAccountPool() {
		this(null);
	}

	public NbAliAccountPool(String id){
		super(id);
	}
	
	@NotBlank(message="支付宝userId不能为空")
	@Length(min=0, max=64, message="支付宝userId长度不能超过 64 个字符")
	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	@Length(min=0, max=32, message="支付宝手机号长度不能超过 32 个字符")
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public Long getNum() {
		return num;
	}

	public void setNum(Long num) {
		this.num = num;
	}
	
	public Long getWeight() {
		return weight;
	}

	public void setWeight(Long weight) {
		this.weight = weight;
	}
	
	public Double getMoney() {
		return money;
	}

	public void setMoney(Double money) {
		this.money = money;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getLastTime() {
		return lastTime;
	}

	public void setLastTime(Date lastTime) {
		this.lastTime = lastTime;
	}

	public String getCallbackSign() {
		return callbackSign;
	}

	public void setCallbackSign(String callbackSign) {
		this.callbackSign = callbackSign;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public User getBelongUser() {
		return belongUser;
	}

	public void setBelongUser(User belongUser) {
		this.belongUser = belongUser;
	}

}