package com.tom.lemenintl.controller.pc;

import com.tom.lemenintl.common.RestHttpReply;
import com.tom.lemenintl.common.repo.SysDictionaryRepo;
import com.tom.lemenintl.common.repo.SysWeixinUserRepo;
import com.tom.lemenintl.common.utils.CommonUtils;
import com.tom.lemenintl.entity.TransOverseaConsult;
import com.tom.lemenintl.repo.TransOverseaConsultItemRepo;
import com.tom.lemenintl.repo.TransOverseaConsultRepo;
import com.tom.lemenintl.repo.TransOverseaExpertRepo;
import com.tom.lemenintl.repo.TransOverseaHospitalRepo;
import com.tom.lemenintl.service.HospitalUnitService;
import com.tom.lemenintl.service.ProductService;
import com.tom.lemenintl.vo.T2106;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;

@RestController
public class OverseaConsultCtl {

	@Autowired
	ProductService ProductService;
	
	@Autowired
	TransOverseaExpertRepo TransOverseaExpertRepo;

	@RequestMapping("/T2101")
	public RestHttpReply T2101(String expertName, Long hospitalId, Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {

			reply.putData("list", TransOverseaExpertRepo.T2101(expertName, hospitalId, pageable));

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	TransOverseaHospitalRepo TransOverseaHospitalRepo;

	@RequestMapping("/T2102")
	public RestHttpReply T2102() throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list", TransOverseaHospitalRepo.findByEnableIsTrue());

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T2103")
	public RestHttpReply T2103(@RequestParam Long expertId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("entity", TransOverseaExpertRepo.findById(expertId).get());
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	SysDictionaryRepo SysDictionaryRepo;

	@RequestMapping("/T2104")
	public RestHttpReply T2104() throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list", SysDictionaryRepo.findByTypeAndEnableIsTrueOrderByOrderNum("nation"));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	HospitalUnitService HospitalUnitService;

	@RequestMapping("/T2105")
	public RestHttpReply T2105(Long id, String name, Integer orderNum, String nationCode, Long hospitalId,
			String specialSkill, String description, Boolean enable, Long headImgFileId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {

			HospitalUnitService.T2105(id, name, orderNum, nationCode, hospitalId, specialSkill, description, enable,
					headImgFileId);

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	TransOverseaConsultRepo TransOverseaConsultRepo;
	
	@RequestMapping("/T2106")
	public RestHttpReply listOverseaConsultTopic(
			@RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime consultTimeStart,
			@RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime consultTimeEnd,
			String status, Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			if(status.equals("")){
				status = null;
			}
			Page<T2106> page = TransOverseaConsultRepo.T2106(consultTimeStart, consultTimeEnd, status, pageable);
			reply.putData("list", page);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	SysWeixinUserRepo SysWeixinUserRepo;
	@Autowired
	TransOverseaConsultItemRepo TransOverseaConsultItemRepo;
	
	@RequestMapping("/T2107")
	public RestHttpReply T2107(@RequestParam Long overseaConsultId, Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			TransOverseaConsult toc = TransOverseaConsultRepo.findById(overseaConsultId).get();
			Long userId = toc.getUserId();
			SysWeixinUserRepo.T2107(userId);
			reply.putData("userInfo",SysWeixinUserRepo.T2107(userId));
			
			reply.putData("list",TransOverseaConsultItemRepo.T2107(overseaConsultId, pageable));
			
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T2108")
	public RestHttpReply T2108(@RequestHeader String token,@RequestParam Long overseaConsultId,@RequestParam String content) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			ProductService.T2108(overseaConsultId, content,token,reply);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T2109")
	public RestHttpReply T2109(@RequestHeader String token,@RequestParam Long overseaConsultId,@RequestParam String content) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			ProductService.T2109(overseaConsultId, content,token,reply);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@RequestMapping("/T2110")
	public RestHttpReply T2110(@RequestHeader String token,@RequestParam Long overseaConsultId,@RequestParam String content) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			ProductService.T2109(overseaConsultId, content,token,reply);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

}
