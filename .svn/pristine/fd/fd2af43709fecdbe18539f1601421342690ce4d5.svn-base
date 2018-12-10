package com.tom.lemenintl.common.utils;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class TokenDetail {

	public static enum Scope {
		WeixinUser, Account
	}

	Long verifyId;// wxUserId or accountId
	Scope verifyScope;// 验证类型：微信或者后台账号

	String sessionKey;
	Long createTime; // 创建时间

	public TokenDetail(Long verifyId, Scope verifyScope, String sessionKey) {
		this.verifyId = verifyId;
		this.verifyScope = verifyScope;
		this.sessionKey = sessionKey;
		createTime = DateTimeUtils.toMilliseconds(LocalDateTime.now());
	}

	public TokenDetail() {
	}

}
