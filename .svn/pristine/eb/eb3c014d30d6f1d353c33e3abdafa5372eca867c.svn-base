package com.tom.lemenintl.controller.pc;

import com.tom.lemenintl.common.RestHttpReply;
import com.tom.lemenintl.common.service.AuthService;
import com.tom.lemenintl.common.utils.CommonUtils;
import com.tom.lemenintl.entity.TransFreeConsult;
import com.tom.lemenintl.repo.TransFreeConsultItemRepo;
import com.tom.lemenintl.repo.TransFreeConsultRepo;
import com.tom.lemenintl.service.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;

@RestController
public class FreeConsultCtl {

	@Autowired
	TransFreeConsultRepo TransFreeConsultRepo;
	@Autowired
	AuthService AuthService;

	@RequestMapping("/T2001")
	public RestHttpReply T2001(
			@RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime consultTimeStart,
			@RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime consultTimeEnd,
			String status, Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list", TransFreeConsultRepo.T2001(consultTimeStart, consultTimeEnd,
					StringUtils.isEmpty(status) ? null : status, pageable));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	TransFreeConsultItemRepo TransFreeConsultItemRepo;

	@RequestMapping("/T2002")
	public RestHttpReply T2002(@RequestParam Long freeConsultId, Pageable pageable, @RequestHeader String token)
			throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long accountId = AuthService.getTokenDetail(token).getVerifyId();
			TransFreeConsult consult = TransFreeConsultRepo.findById(freeConsultId).get();
			reply.putData("userInfo", AuthService.getUserInfo(consult.getUserId()));
			reply.putData("topic", consult);
			reply.putData("list", TransFreeConsultItemRepo.T2002(accountId, freeConsultId, pageable));

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	ContactService ContactService;

	@RequestMapping("/T2003")
	public RestHttpReply T2003(@RequestParam Long freeConsultId, @RequestParam String content,
			@RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long replierAccountId = AuthService.getTokenDetail(token).getVerifyId();
			ContactService.T2003(freeConsultId, replierAccountId, content);

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T2004")
	public RestHttpReply T2004(@RequestParam Long freeConsultId, @RequestParam String content,
			@RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {

			Long replierAccountId = AuthService.getTokenDetail(token).getVerifyId();
			ContactService.T2004(freeConsultId, replierAccountId, content);

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

}
