package com.tom.lemenintl.common.exception;

import java.util.Map;

public class WeixinApiException extends AppException {
	private static final long serialVersionUID = 1L;

	private static final String HttpReplyCode = "S001";

	public WeixinApiException(Map<String, Object> resultMap) {
		super(HttpReplyCode, "errcode<" + resultMap.get("errcode") + "> , errmsg<" + resultMap.get("errmsg") + ">.",
				"微信接口调用失败.");
	}

}
