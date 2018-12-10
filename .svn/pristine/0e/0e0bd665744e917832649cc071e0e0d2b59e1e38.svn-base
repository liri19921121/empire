package com.tom.lemenintl.common.exception;

public class MobileValidException extends AppException {
	private static final long serialVersionUID = 1L;

	private static final String HttpReplyCode = "S006";

	public MobileValidException(String vcode) {
		super(HttpReplyCode, "Invalid token<" + vcode + ">.", "验证失败, 请重新输入验证码.");
	}
}
