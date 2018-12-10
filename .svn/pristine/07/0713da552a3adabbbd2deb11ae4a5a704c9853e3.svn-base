package com.tom.lemenintl.common.service;

import com.tom.lemenintl.common.config.DefaultSetting;
import lombok.extern.slf4j.Slf4j;
import org.apache.http.client.fluent.Request;
import org.apache.http.client.utils.URIBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.net.URI;

@Slf4j
@Service
public class WeixinAPIService {

	@Autowired
	private Environment env;

	/**
	 * 
	 * 登录凭证校验
	 * 
	 * https://api.weixin.qq.com/sns/jscode2session?appid=APPID&secret=SECRET&js_code=JSCODE&grant_type=authorization_code
	 * 
	 * @param appid
	 * @param secret
	 * @param js_code
	 * @param grant_type
	 * @return
	 * @throws Exception
	 */
	public String jscode2session(String appid, String secret, String js_code, String grant_type) throws Exception {
		if (StringUtils.isEmpty(appid)) {
			appid = env.getProperty("WeixinPlatform.AppID");
		}
		if (StringUtils.isEmpty(secret)) {
			secret = env.getProperty("WeixinPlatform.AppSecret");
		}
		if (StringUtils.isEmpty(grant_type)) {
			grant_type = "authorization_code";
		}

		URI uri = new URIBuilder("https://api.weixin.qq.com/sns/jscode2session").setParameter("appid", appid)
				.setParameter("secret", secret).setParameter("js_code", js_code).setParameter("grant_type", grant_type)
				.build();

		log.debug(">=====>" + uri.toString());
		String resultStr = Request.Get(uri).execute().returnContent().asString(DefaultSetting.CHARSET);
		log.debug("<=====<" + resultStr);
		return resultStr;
	}

}
