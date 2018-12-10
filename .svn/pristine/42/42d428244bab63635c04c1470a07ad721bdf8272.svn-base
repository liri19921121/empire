package com.tom.lemenintl.controller.wxapp;

import com.tom.lemenintl.common.RestHttpReply;
import com.tom.lemenintl.common.service.AuthService;
import com.tom.lemenintl.common.utils.CommonUtils;
import com.tom.lemenintl.repo.TransDisplayBannerRepo;
import com.tom.lemenintl.repo.TransHealthArticleRepo;
import com.tom.lemenintl.repo.TransHealthProductRepo;
import com.tom.lemenintl.service.ContactService;
import com.tom.lemenintl.service.DisplayStuffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HealthCtl {
	@Autowired
	AuthService AuthService;
	@Autowired
	ContactService ContactService;

	@Autowired
	DisplayStuffService DisplayStuffService;
	
	
	@Autowired
	TransDisplayBannerRepo TransDisplayBannerRepo;

	@RequestMapping("/T1201")
	public RestHttpReply T1201() throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list", TransDisplayBannerRepo.findByEnableIsTrueAndBannerTypeOrderByOrderNum("2"));

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	TransHealthArticleRepo TransHealthArticleRepo;

	@RequestMapping("/T1202")
	public RestHttpReply T1202(Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list", TransHealthArticleRepo.findByEnableIsTrue(pageable));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T1203")
	public RestHttpReply T1203(@RequestParam Long articleId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("entity", TransHealthArticleRepo.findById(articleId).get());
			DisplayStuffService.T1203(articleId);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	TransHealthProductRepo TransHealthProductRepo;

	@RequestMapping("/T1204")
	public RestHttpReply T1204(Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list", TransHealthProductRepo.findByEnableIsTrue(pageable));

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T1205")
	public RestHttpReply T1205(@RequestParam Long healthProductId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("entity", TransHealthProductRepo.findById(healthProductId).get());

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T1206")
	public RestHttpReply T1206(@RequestParam Long healthProductId, @RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			// 获取userId
			Long userId = AuthService.getTokenDetail(token).getVerifyId();
			ContactService.T1206(healthProductId, userId);

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T1207")
	public RestHttpReply T1207(@RequestParam Long articleId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			DisplayStuffService.T1207(articleId);

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

}
