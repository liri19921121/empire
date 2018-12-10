package com.tom.lemenintl.common.exception;

public class TokenValidException extends AppException {
	private static final long serialVersionUID = 1L;

	private static final String HttpReplyCode = "S003";

	public TokenValidException(String token) {
		super(HttpReplyCode, "Invalid token<" + token + ">.", "验证失败, 请重新登陆.");
	}
}
