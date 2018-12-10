package com.tom.lemenintl.common.exception;

import lombok.Getter;
import lombok.Setter;

public class AppException extends Exception {
	private static final long serialVersionUID = 1L;

	@Getter
	String httpReplyCode;

	@Setter
	String[] tooltips;

	public AppException(String httpReplyCode, String errorMsg, String... tooltips) {
		super(errorMsg);
		this.httpReplyCode = httpReplyCode;
		this.tooltips = tooltips;
	}

	public String getTooltips() {
		StringBuilder builder = new StringBuilder();
		if (tooltips != null && tooltips.length != 0) {
			for (String tip : tooltips) {
				builder.append(tip);
			}
		}
		return builder.toString();
	}

}
