package com.tom.lemenintl.common.utils;

import com.tom.lemenintl.common.RestHttpReply;
import com.tom.lemenintl.common.exception.AppException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;

import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Random;

@Slf4j
public class CommonUtils {

	public static void printInvokeLog() {
		// 获得当前类名
		String clazz = Thread.currentThread().getStackTrace()[2].getClassName();
		// 获得当前方法名
		String method = Thread.currentThread().getStackTrace()[2].getMethodName();
		log.debug("method invoke =====>class name: " + clazz + ". method name: " + method);
	}

	public static void printObject(Object object) {
		if (object == null) {
			log.debug("object print =====> Null.");
		} else {
			log.debug("object print =====>class name: " + object.getClass() + ". value: " + object.toString());
		}
	}

	public static void wrapException(RestHttpReply reply, Exception e) {
		log.debug("error reply =====>");

		if (e instanceof AppException) {
			reply.setCode(((AppException) e).getHttpReplyCode());
			reply.setTooltips(((AppException) e).getTooltips());
		} else if (e instanceof NoSuchElementException) {
			reply.setCode(RestHttpReply.RUNTIME_EXCEPTION);
			reply.setTooltips("未找到指定记录.");
		} else {
			reply.setCode(RestHttpReply.RUNTIME_EXCEPTION);
			reply.setTooltips("出错了!请重试或联系管理员.");

			log.debug(e.getMessage(), e);
		}
		reply.setDesc(e.getMessage());

	}

	public static boolean containsHanScript(String s) {
		return s.codePoints()
				.anyMatch(codepoint -> Character.UnicodeScript.of(codepoint) == Character.UnicodeScript.HAN);
	}

	public static <T> T mockEntity(Class<T> cls) throws Exception {
		return cls.newInstance();
	}

	public static <T> List<T> mockList(Class<T> cls) throws Exception {
		return Arrays.asList(cls.newInstance(), cls.newInstance());
	}

	public static <T> Page<T> mockListWithPage(Class<T> cls) throws Exception {
		return new PageImpl<T>(Arrays.asList(cls.newInstance(), cls.newInstance()));
	}

	public static String random4IntStr() {
		Random rand = new Random();
		int n = rand.nextInt(9999);
		DecimalFormat df = new DecimalFormat("0000");
		return df.format(n);
	}

}
