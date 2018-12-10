package com.tom.lemenintl.common.service;

import com.tom.lemenintl.common.entity.LogSms;
import com.tom.lemenintl.common.exception.MobileValidException;
import com.tom.lemenintl.common.repo.LogSmsRepo;
import com.tom.lemenintl.common.utils.CommonUtils;
import lombok.extern.slf4j.Slf4j;
import org.apache.http.client.fluent.Request;
import org.apache.http.client.utils.URIBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.net.URI;
import java.nio.charset.Charset;
import java.util.Optional;

@Slf4j
@Service
public class SmsService {
	@Autowired
	private Environment env;
	@Autowired
	LogSmsRepo LogSmsRepo;

	@Transactional
	public Long T1406(String mobile, Long userId) throws Exception {

		String userid = env.getProperty("sms.userid");
		String username = env.getProperty("sms.username");
		String passwordMd5 = env.getProperty("sms.passwordMd5");

		String key = CommonUtils.random4IntStr();
		String message = "【莱蒙医疗】您的验证码是：" + key;

		URI uri = new URIBuilder("http://42.96.248.183:8080/sendsms.php").setParameter("userid", userid)
				.setParameter("username", username).setParameter("passwordMd5", passwordMd5)
				.setParameter("mobile", mobile).setParameter("message", message).setCharset(Charset.forName("GBK"))
				.build();

		log.debug(">=====>" + uri.toString());
		String resultStr = Request.Get(uri).execute().returnContent().asString();
		log.debug("<=====<" + resultStr);
		Long resultCode = Long.parseLong(resultStr);

		// 保存
		LogSms sms = new LogSms();
		sms.setMsgType("1");
		sms.setUserId(userId);
		sms.setMobile(mobile);
		sms.setContent(message);
		sms.setMobile(mobile);
		sms.setKey(key);

		if (resultCode > 0) {
			sms.setStatus("2");
		} else {
			sms.setStatus("3");
		}
		LogSmsRepo.save(sms);

		return resultCode;
	}

	public Boolean T1407(String vcode,String phone, Long userId) throws Exception {
		Optional<LogSms> optional = LogSmsRepo.findTopByUserIdAndMsgTypeAndStatusOrderByCreateTimeDesc(userId, "1",
				"2");
		if (optional.isPresent() && vcode.equals(optional.get().getKey()) && optional.get().getMobile().toString().equals(phone)) {
			return Boolean.TRUE;
		} else {
			throw new MobileValidException(vcode);
		}
	}

}
