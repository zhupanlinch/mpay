package com.jeesite.modules.nb.entity;

public class NbResultVO {
	private Integer status;
	private String errorMsg;
	private String businessId;
	private Object message;
	private String alipayUrl;
	private String qrcode;//收款二维码

	public NbResultVO(Integer status, String errorMsg) {
		this.status = status;
		this.errorMsg = errorMsg;
	}

	public NbResultVO() {
	}

	public String getAlipayUrl() {
		return alipayUrl;
	}

	public void setAlipayUrl(String alipayUrl) {
		this.alipayUrl = alipayUrl;
	}

	public void setBusinessId(String businessId) {
		this.businessId = businessId;
	}

	public String getBusinessId() {
		return businessId;
	}

	public String getErrorMsg() {
		return errorMsg;
	}

	public void setErrorMsg(String errorMsg) {
		this.errorMsg = errorMsg;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Object getMessage() {
		return message;
	}

	public void setMessage(Object message) {
		this.message = message;
	}

	public String getQrcode() {
		return qrcode;
	}

	public void setQrcode(String qrcode) {
		this.qrcode = qrcode;
	}

}
