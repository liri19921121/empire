package com.tom.lemenintl.controller.pc;

import com.tom.lemenintl.common.RestHttpReply;
import com.tom.lemenintl.common.service.AuthService;
import com.tom.lemenintl.common.utils.CommonUtils;
import com.tom.lemenintl.entity.TransHealthProductApply;
import com.tom.lemenintl.repo.TransHealthArticleRepo;
import com.tom.lemenintl.repo.TransHealthProductApplyRepo;
import com.tom.lemenintl.repo.TransHealthProductRepo;
import com.tom.lemenintl.service.DisplayStuffService;
import com.tom.lemenintl.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@RestController
public class HealthManageCtl {

	@Autowired
	TransHealthArticleRepo TransHealthArticleRepo;

	@RequestMapping("/T2401")
	public RestHttpReply T2401(
			@RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime createTimeStart,
			@RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime createTimeEnd,
			Boolean enable, Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list", TransHealthArticleRepo.T2401(createTimeStart, createTimeEnd, enable, pageable));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T2402")
	public RestHttpReply T2402(@RequestParam Long articleId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("entity", TransHealthArticleRepo.findById(articleId).get());
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	DisplayStuffService DisplayStuffService;

	@RequestMapping("/T2403")
	public RestHttpReply T2403(Long id, String articleType, String title, Integer orderNum, Boolean enable,
			String contentHtml, Long coverFileId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			DisplayStuffService.T2403(id, articleType, title, orderNum, enable, contentHtml, coverFileId);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	TransHealthProductRepo TransHealthProductRepo;

	@RequestMapping("/T2404")
	public RestHttpReply T2404(
			@RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime createTimeStart,
			@RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime createTimeEnd,
			Boolean enable, Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list", TransHealthProductRepo.T2404(createTimeStart, createTimeEnd, enable, pageable));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T2405")
	public RestHttpReply T2405(@RequestParam Long productId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("entity", TransHealthProductRepo.findById(productId).get());
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	ProductService ProductService;
	@Autowired
	AuthService AuthService;

	@RequestMapping("/T2406")
	public RestHttpReply T2406(Long id, String name, Integer orderNum, Boolean enable, String contentHtml,
			Long coverFileId, String special, String recommend, BigDecimal originalPrice, BigDecimal discountPrice,
			@RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long creatorAccountId = AuthService.getTokenDetail(token).getVerifyId();
			ProductService.T2406(id, name, orderNum, enable, contentHtml, coverFileId, special, recommend,
					originalPrice, discountPrice, creatorAccountId);

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	TransHealthProductApplyRepo TransHealthProductApplyRepo;
	
	@RequestMapping("/T2407")
	public RestHttpReply T2407(Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list", TransHealthProductApplyRepo.T2407(pageable));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T2408")
	public RestHttpReply T2408(@RequestParam Long productApplyId,@RequestParam String productApplyReason) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			TransHealthProductApply thpa = TransHealthProductApplyRepo.findById(productApplyId).get();
			thpa.setProductApplyReason(productApplyReason);
			thpa.setUpdateTime(LocalDateTime.now());
			thpa.setStatus("2");
			TransHealthProductApplyRepo.save(thpa);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

}
