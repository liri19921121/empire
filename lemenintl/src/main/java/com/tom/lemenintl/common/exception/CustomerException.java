package com.tom.lemenintl.common.exception;

public class CustomerException extends AppException {
	private static final long serialVersionUID = 1L;

	private static final String HttpReplyCode = "S004";

	public CustomerException(String tooltips) {
		super(HttpReplyCode, "Backend accessing has been prevented.", tooltips);
	}

}
