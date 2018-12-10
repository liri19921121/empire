package com.tom.lemenintl.common.utils;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.util.StringUtils;

public class JsonUtils {

	public static String toJson(Object obj, ObjectMapper objectMapper) throws Exception {
		return objectMapper.writeValueAsString(obj);
	}

	public static <T> T parseJson(String json, TypeReference<T> typeReference, ObjectMapper objectMapper)
			throws Exception {
		if (StringUtils.isEmpty(json)) {
			return null;
		}
		return objectMapper.readValue(json, typeReference);
	}

	public static <T> T parseJson(String json, Class<T> cls, ObjectMapper objectMapper) throws Exception {
		if (StringUtils.isEmpty(json)) {
			return null;
		}
		
		return objectMapper.readValue(json, cls);
	}
	
}
