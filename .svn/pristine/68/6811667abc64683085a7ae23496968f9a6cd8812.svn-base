package com.tom.lemenintl.common.config;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;
import com.fasterxml.jackson.datatype.jsr310.deser.LocalDateTimeDeserializer;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateTimeSerializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.nio.charset.Charset;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 * @author TommyDeng <250575979@qq.com>
 * @version 创建时间：2016年9月21日 下午7:48:08
 *
 */

@Configuration
public class DefaultSetting {
	public final static Charset CHARSET = Charset.forName("UTF-8");

	@Bean
	public ObjectMapper objectMapper() {
		ObjectMapper mapper = new ObjectMapper();

		JavaTimeModule module = new JavaTimeModule();
		LocalDateTimeDeserializer localDateTimeDeserializer = new LocalDateTimeDeserializer(
				DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
		module.addDeserializer(LocalDateTime.class, localDateTimeDeserializer);
		LocalDateTimeSerializer localDateTimeSerializer = new LocalDateTimeSerializer(
				DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
		module.addSerializer(LocalDateTime.class, localDateTimeSerializer);
		mapper.registerModule(module);

		// spring.jackson.default-property-inclusion=non-empty
		// 空属性不显示
		mapper.setDefaultPropertyInclusion(JsonInclude.Include.ALWAYS);

		// #反序列化设置(parse json)
		mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
		mapper.configure(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT, true);
		mapper.configure(DeserializationFeature.ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT, true);

		// #日期格式json序列化字段散列问题(to json)
		mapper.configure(SerializationFeature.FAIL_ON_EMPTY_BEANS, false);
		mapper.configure(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS, false);
		return mapper;
		
	}
}
