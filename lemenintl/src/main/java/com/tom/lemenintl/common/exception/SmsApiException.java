package com.tom.lemenintl.common.exception;

import java.util.HashMap;
import java.util.Map;

public class SmsApiException extends AppException {
	private static final long serialVersionUID = 1L;

	private static final String HttpReplyCode = "S005";

	public SmsApiException(Long code) {
		super(HttpReplyCode, "errcode<" + code + "> , errmsg<" + CodeDescMap.get(code) + ">.",
				"短信接口调用失败." + CodeDescMap.get(code));
	}

	private static final Map<Integer, String> CodeDescMap;
	static {
		CodeDescMap = new HashMap<Integer, String>();
		CodeDescMap.put(-1, "账号/密码或企业ID错误");
		CodeDescMap.put(-2, "缺少企业账号");
		CodeDescMap.put(-3, "缺少密码");
		CodeDescMap.put(-4, "缺少短信内容");
		CodeDescMap.put(-5, "缺少目标号码");
		CodeDescMap.put(-7, "短信内容过长(小灵通最大56个字)");
		CodeDescMap.put(-8, "含有非法字符，第二行返回非法关键词（换行使用\r\n）");
		CodeDescMap.put(-9, "目标号码格式错误，或者包含错误的手机号码");
		CodeDescMap.put(-10, "超过规定发送时间，禁止提交发送");
		CodeDescMap.put(-12, "余额不足");
		CodeDescMap.put(-14, "号码超过发送数量限制");
		CodeDescMap.put(-15, "发送内容前面需加签名，例如【XXX公司】，签名必须放在最前面，如果内容的编码错误，出现乱码，识别不出签名【XXX公司】，也会返回-15");
		CodeDescMap.put(-16, "提交号码数量小于最小提交量限制");
		CodeDescMap.put(-20, "未开通接口");
		CodeDescMap.put(-22, "短信内容签名不正确");
		CodeDescMap.put(-23, "IP鉴权失败");
		CodeDescMap.put(-24, "缺少企业ID");
		CodeDescMap.put(-25, "签名扩展匹配异常，可能已无可用扩展");
		CodeDescMap.put(-99, "连接失败");
		CodeDescMap.put(-100, "系统内部错误");
	}
}
