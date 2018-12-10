package com.tom.lemenintl.controller.pc;

import com.tom.lemenintl.common.RestHttpReply;
import com.tom.lemenintl.common.repo.SysWeixinUserRepo;
import com.tom.lemenintl.common.utils.CommonUtils;
import com.tom.lemenintl.entity.TransOverseaVideochat;
import com.tom.lemenintl.repo.TransOverseaExpertRepo;
import com.tom.lemenintl.repo.TransOverseaVideochatRepo;
import com.tom.lemenintl.service.HospitalUnitService;
import com.tom.lemenintl.vo.T2205;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;

@RestController
public class OverseaVideochatCtl {

	@Autowired
	TransOverseaExpertRepo TransOverseaExpertRepo;

	@RequestMapping("/T2201")
	public RestHttpReply T2201(String name, String nationCode, Boolean enable, Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list", TransOverseaExpertRepo.T2201(name, nationCode, enable, pageable));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T2202")
	public RestHttpReply T2202(@RequestParam Long expertId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("entity", TransOverseaExpertRepo.findById(expertId).get());
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	HospitalUnitService HospitalUnitService;

	@RequestMapping("/T2203")
	public RestHttpReply T2203(Long id, String name, Integer orderNum, String nationCode, Long hospitalId,
			String specialSkill, String description, Boolean enable, Long headImgFileId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {

			HospitalUnitService.T2203(id, name, orderNum, nationCode, hospitalId, specialSkill, description, enable,
					headImgFileId);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	TransOverseaVideochatRepo TransOverseaVideochatRepo;
	
	@RequestMapping("/T2204")
	public RestHttpReply T2204(Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list", TransOverseaVideochatRepo.T2204(pageable));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	SysWeixinUserRepo SysWeixinUserRepo;
	
	@RequestMapping("/T2205")
	public RestHttpReply T2205(@RequestParam Long overseaVideochatId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long userId = TransOverseaVideochatRepo.findById(overseaVideochatId).get().getUserId();
			reply.putData("userInfo", SysWeixinUserRepo.T2107(userId));
			T2205 t = TransOverseaVideochatRepo.T2205(overseaVideochatId);
			reply.putData("entity",t);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T2206")
	public RestHttpReply T2206(@RequestParam Long overseaVideochatId,@RequestParam String content) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			TransOverseaVideochat t = TransOverseaVideochatRepo.findById(overseaVideochatId).get();
			t.setStatus("2");
			t.setContent(content);
			t.setUpdateTime(LocalDateTime.now());
			TransOverseaVideochatRepo.save(t);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@RequestMapping("/T2207")
	public RestHttpReply T2207(@RequestParam Long overseaVideochatId,@RequestParam String content) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			TransOverseaVideochat t = TransOverseaVideochatRepo.findById(overseaVideochatId).get();
			t.setStatus("4");
			t.setRejectReson(content);
			t.setUpdateTime(LocalDateTime.now());
			TransOverseaVideochatRepo.save(t);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@RequestMapping("/T2208")
	public RestHttpReply T2208(@RequestParam Long overseaVideochatId,@RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime comfirmTime) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			TransOverseaVideochat t = TransOverseaVideochatRepo.findById(overseaVideochatId).get();
			t.setStatus("4");
			t.setComfirmTime(comfirmTime);
			t.setUpdateTime(LocalDateTime.now());
			TransOverseaVideochatRepo.save(t);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@RequestMapping("/T2209")
	public RestHttpReply T2209(@RequestParam Long overseaVideochatId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			TransOverseaVideochat t = TransOverseaVideochatRepo.findById(overseaVideochatId).get();
			t.setStatus("5");
			t.setUpdateTime(LocalDateTime.now());
			TransOverseaVideochatRepo.save(t);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
}
