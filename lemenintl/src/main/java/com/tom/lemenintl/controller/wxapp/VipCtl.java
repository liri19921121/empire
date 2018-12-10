package com.tom.lemenintl.controller.wxapp;

import com.tom.lemenintl.common.RestHttpReply;
import com.tom.lemenintl.common.repo.SysWeixinUserRepo;
import com.tom.lemenintl.common.service.AuthService;
import com.tom.lemenintl.common.utils.CommonUtils;
import com.tom.lemenintl.repo.TransDisplayContentRepo;
import com.tom.lemenintl.repo.TransVipProductRepo;
import com.tom.lemenintl.repo.TransVipRealtimeChatRepo;
import com.tom.lemenintl.service.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;

@RestController
public class VipCtl {

	@Autowired
	AuthService AuthService;

	@Autowired
	ContactService ContactService;

	@Autowired
	TransDisplayContentRepo TransDisplayContentRepo;

	@RequestMapping("/T1301")
	public RestHttpReply T1301() throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("entity", TransDisplayContentRepo.findAll().get(0));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	TransVipProductRepo TransVipProductRepo;
	@Autowired
	SysWeixinUserRepo SysWeixinUserRepo;

	@RequestMapping("/T1302")
	public RestHttpReply T1302(Pageable pageable, @RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			// 获取userId
			Long userId = AuthService.getTokenDetail(token).getVerifyId();
			String userLevel = SysWeixinUserRepo.findById(userId).get().getUserLevel();

			if ("2".equals(userLevel)) {
				reply.putData("list", TransVipProductRepo.findByEnableIsTrue(pageable));

			} else {// 普通用户
				reply.putData("list", TransVipProductRepo.findByEnableIsTrueAndVipProductType("2", pageable));// 只显示普通类型
			}

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T1303")
	public RestHttpReply T1303(@RequestParam Long vipProductId,
			@RequestParam @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime applyTime,
			@RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			// 获取userId
			Long userId = AuthService.getTokenDetail(token).getVerifyId();
			ContactService.T1303(vipProductId, applyTime, userId);

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	TransVipRealtimeChatRepo TransVipRealtimeChatRepo;

	@RequestMapping("/T1304")
	public RestHttpReply T1304(Pageable pageable, @RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			// 获取userId
			Long userId = AuthService.getTokenDetail(token).getVerifyId();

			reply.putData("caregiverList", TransVipRealtimeChatRepo.findByVipUserId(userId, pageable));

			reply.putData("list", TransVipRealtimeChatRepo.findByVipUserId(userId, pageable));

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

}
