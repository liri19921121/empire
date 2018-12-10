package com.tom.lemenintl.common.controller;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.tom.lemenintl.common.RestHttpReply;
import com.tom.lemenintl.common.entity.SysWeixinUser;
import com.tom.lemenintl.common.exception.WeixinApiException;
import com.tom.lemenintl.common.service.AuthService;
import com.tom.lemenintl.common.service.UserService;
import com.tom.lemenintl.common.service.WeixinAPIService;
import com.tom.lemenintl.common.utils.CommonUtils;
import com.tom.lemenintl.common.utils.EncryptionUtils;
import com.tom.lemenintl.common.utils.JsonUtils;
import com.tom.lemenintl.common.utils.TokenDetail;
import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
public class WeixinAPICtl {

	@Autowired
	WeixinAPIService weixinAPIService;

	@Autowired
	ObjectMapper objectMapper;

	@Autowired
	UserService UserService;

	@Autowired
	AuthService AuthService;

	@RequestMapping("/W001")
	public RestHttpReply W001(@RequestParam String js_code, String appid, String secret, String grant_type)
			throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {

			// 1、调用微信api返回openid 用户唯一标识，session_key 会话密钥，unionid 用户在开放平台的唯一标识符
			String resultStr = weixinAPIService.jscode2session(appid, secret, js_code, grant_type);

			// 2、返回token
			Map<String, Object> resultMap = JsonUtils.parseJson(resultStr, new TypeReference<Map<String, Object>>() {
			}, objectMapper);

			// 微信调用报错也视为调用失败
			if (!StringUtils.isEmpty(resultMap.get("errcode"))) {
				throw new WeixinApiException(resultMap);
			}
			String openId = (String) resultMap.get("openid");
			String sessionKey = (String) resultMap.get("session_key");
			// String unionid = (String) resultMap.get("unionid");

			// 保存用户
			SysWeixinUser weixinUser = new SysWeixinUser();
			weixinUser.setOpenId(openId);
			
			SysWeixinUser savedWeixinUser = UserService.saveUser(weixinUser);
			

			// 生成token
			TokenDetail tokenDetail = new TokenDetail(savedWeixinUser.getId(), TokenDetail.Scope.WeixinUser,
					sessionKey);
			String token = AuthService.genToken(tokenDetail);

			reply.putData("token", token);
			reply.putData("openid", openId);

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/W002")
	public RestHttpReply W002(@RequestHeader String token, @RequestParam String userInfo) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			SysWeixinUser weixinUser = JsonUtils.parseJson(userInfo, SysWeixinUser.class, objectMapper);
			// 1、保存用户信息至用户表
			if (weixinUser != null) {

				weixinUser.setId(Long.valueOf(AuthService.getTokenDetail(token).getVerifyId()));
				// 保存用户
				UserService.saveUserInfo(weixinUser);
				reply.putData("userId", weixinUser.getId());
			}

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/W003")
	public RestHttpReply W003(@RequestHeader String token, @RequestParam String encryptedData, String iv)
			throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			String sessionKey = AuthService.getTokenDetail(token).getSessionKey();
			reply.putData("decryptData", EncryptionUtils.decrypt(Base64.decodeBase64(encryptedData),
					Base64.decodeBase64(sessionKey), Base64.decodeBase64(iv)));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

}
