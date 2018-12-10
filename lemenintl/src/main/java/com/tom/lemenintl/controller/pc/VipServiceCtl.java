package com.tom.lemenintl.controller.pc;

import com.tom.lemenintl.common.RestHttpReply;
import com.tom.lemenintl.common.service.AuthService;
import com.tom.lemenintl.common.utils.CommonUtils;
import com.tom.lemenintl.entity.TransDisplayContent;
import com.tom.lemenintl.entity.TransVipProductApply;
import com.tom.lemenintl.repo.TransDisplayContentRepo;
import com.tom.lemenintl.repo.TransVipProductApplyRepo;
import com.tom.lemenintl.repo.TransVipProductRepo;
import com.tom.lemenintl.service.DisplayStuffService;
import com.tom.lemenintl.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;
import java.util.Optional;

@RestController
public class VipServiceCtl {

	@Autowired
	TransDisplayContentRepo TransDisplayContentRepo;

	@RequestMapping("/T2501")
	public RestHttpReply T2501() throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Optional<TransDisplayContent> optional = TransDisplayContentRepo.findById(1l);

			if (optional.isPresent()) {
				reply.putData("vipShowHtml", optional.get().getVipShowHtml());
				reply.putData("zhukangtangCoverFileId", optional.get().getZhukangtangCoverFileId());
				reply.putData("zhukangtangShowHtml", optional.get().getZhukangtangShowHtml());
			}

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	DisplayStuffService DisplayStuffService;

	@RequestMapping("/T2502")
	public RestHttpReply T2502(String vipShowHtml, Long zhukangtangCoverFileId, String zhukangtangShowHtml)
			throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			DisplayStuffService.T2502(vipShowHtml, zhukangtangCoverFileId, zhukangtangShowHtml);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	TransVipProductRepo TransVipProductRepo;

	@RequestMapping("/T2503")
	public RestHttpReply T2503(Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list", TransVipProductRepo.T2503(pageable));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T2504")
	public RestHttpReply T2504(@RequestParam Long vipProductId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("entity", TransVipProductRepo.findById(vipProductId).get());
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	ProductService ProductService;

	@Autowired
	AuthService AuthService;

	@RequestMapping("/T2505")
	public RestHttpReply T2505(Long id, String name, Integer orderNum, String vipProductType, String servicePeriod,
			String applyTimeStart1, String applyTimeEnd1, String applyTimeStart2, String applyTimeEnd2,
			Integer maxCount, Boolean enable, @RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long creatorAccountId = AuthService.getTokenDetail(token).getVerifyId();

			ProductService.T2505(id, name, orderNum, vipProductType, servicePeriod, applyTimeStart1, applyTimeEnd1,
					applyTimeStart2, applyTimeEnd2, maxCount, enable, creatorAccountId);

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	TransVipProductApplyRepo TransVipProductApplyRepo;
	
	@RequestMapping("/T2506")
	public RestHttpReply T2506(@RequestParam(required = false) String userName, @RequestParam(required = false) String userMobile,
			@RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime applyTimeStart,
			@RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime applyTimeEnd,
			@RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime submitTimeStart,
			@RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime submitTimeEnd,
			Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list", TransVipProductApplyRepo.T2506(userName,userMobile,applyTimeStart,applyTimeEnd,submitTimeStart,submitTimeEnd,pageable));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T2507")
	public RestHttpReply T2507(@RequestParam Long applyId, @RequestParam String status) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			TransVipProductApply t = TransVipProductApplyRepo.findById(applyId).get();
			t.setStatus(status);
			t.setUpdateTime(LocalDateTime.now());
			TransVipProductApplyRepo.save(t);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

}
