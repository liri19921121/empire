package com.tom.lemenintl.common;

import lombok.Data;
import org.springframework.boot.jackson.JsonComponent;

import java.util.HashMap;
import java.util.Map;

/**
 * @author TommyDeng <250575979@qq.com>
 * @version 创建时间：2018年2月2日 上午11:45:41
 *
 */
@Data
@JsonComponent
public class RestHttpReply {

	public static final String SUCCESS = "S000";// 成功

	public static final String RUNTIME_EXCEPTION = "S099";// 运行时抛出异常
	public static final String UNKNOWN = "S100";// 未知错误

	private String code = SUCCESS; // 返回状态码
	private String desc; // 返回错误消息
	private String tooltips; // 页面提示消息，展示给用户
	private Map<String, Object> data; // 返回数据体

	public void putData(String key, Object value) {
		if (data == null) {
			data = new HashMap<String, Object>();
		}
		data.put(key, value);
	}
}
