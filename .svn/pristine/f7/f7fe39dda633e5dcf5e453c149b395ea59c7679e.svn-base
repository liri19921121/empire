package com.tom.lemenintl.controller.pc;

import com.tom.lemenintl.common.RestHttpReply;
import com.tom.lemenintl.common.entity.SysWeixinUser;
import com.tom.lemenintl.common.repo.SysWeixinUserRepo;
import com.tom.lemenintl.common.service.AuthService;
import com.tom.lemenintl.common.utils.CommonUtils;
import com.tom.lemenintl.entity.TransUserHealthAdvice;
import com.tom.lemenintl.repo.*;
import com.tom.lemenintl.vo.T2601;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@RestController
public class MemberManageCtl {

	@Autowired
	SysWeixinUserRepo SysWeixinUserRepo;
	
	@RequestMapping("/T2601")
	public RestHttpReply T2601(@RequestParam(required = false) String userName,@RequestParam(required = false) String moblie,
			@RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime registeTimeStart,
			@RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime registeTimeEnd,
			@RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime lastLoginTimeStart,
			@RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime lastLoginTimeEnd,
			Long activity, Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			if(activity == null){
				activity = (long) 0;
			}
			List<T2601> list = SysWeixinUserRepo.T2601(userName,moblie,registeTimeStart,registeTimeEnd,lastLoginTimeStart,lastLoginTimeEnd,activity,pageable);
			reply.putData("list", list);
			
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T2602")
	public RestHttpReply T2602(@RequestParam Long userId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("userInfo", SysWeixinUserRepo.findById(userId).get());
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T2603")
	public RestHttpReply T2603(@RequestParam Long userId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			SysWeixinUser u = SysWeixinUserRepo.findById(userId).get();
			u.setUserLevel("2");
			u.setUpdateTime(LocalDateTime.now());
			SysWeixinUserRepo.save(u);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@Autowired
	TransUserDataStepRepo TransUserDataStepRepo;
	
	@RequestMapping("/T2604")
	public RestHttpReply T2604(@RequestParam Long userId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			LocalDate t = LocalDate.now().minusDays(7);
			reply.putData("list", TransUserDataStepRepo.T2604(t,userId));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	TransUserDataMoodRepo TransUserDataMoodRepo;
	
	@RequestMapping("/T2605")
	public RestHttpReply T2605(@RequestParam Long userId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			LocalDate t = LocalDate.now().minusDays(7);
			reply.putData("list", TransUserDataMoodRepo.T2605(t, userId));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@Autowired
	TransUserDataMealRepo TransUserDataMealRepo;
	
	@RequestMapping("/T2606")
	public RestHttpReply T2606(@RequestParam Long userId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("entity", TransUserDataMealRepo.findTopByUserIdOrderByCreateTimeDesc(userId));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@RequestMapping("/T2607")
	public RestHttpReply T2607(@RequestParam Long userId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			LocalDate t = LocalDate.now().minusDays(7);
			reply.putData("list", TransUserDataMealRepo.T2607(t, userId));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@Autowired
	TransUserDataBloodPressureRepo TransUserDataBloodPressureRepo;
	
	@RequestMapping("/T2608")
	public RestHttpReply T2608(@RequestParam Long userId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			LocalDate t = LocalDate.now().minusDays(7);
			reply.putData("list", TransUserDataBloodPressureRepo.T2608(t, userId));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	TransUserDataBloodSugarRepo TransUserDataBloodSugarRepo;
	
	@RequestMapping("/T2609")
	public RestHttpReply T2609(@RequestParam Long userId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			LocalDate t = LocalDate.now().minusDays(7);
			reply.putData("list", TransUserDataBloodSugarRepo.T2609(t, userId));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@Autowired
	TransUserDataWeightRepo TransUserDataWeightRepo;
	
	@RequestMapping("/T2610")
	public RestHttpReply T2610(@RequestParam Long userId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			LocalDate t = LocalDate.now().minusDays(7);
			reply.putData("list", TransUserDataWeightRepo.T2610(t, userId));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@Autowired
	TransUserHealthAdviceRepo TransUserHealthAdviceRepo;
	
	@RequestMapping("/T2611")
	public RestHttpReply T2611(@RequestParam Long userId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list", TransUserHealthAdviceRepo.T2611(userId));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@Autowired
	AuthService AuthService;
	
	@RequestMapping("/T2612")
	public RestHttpReply T2612(@RequestHeader String token,@RequestParam Long userId,@RequestParam String advice) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			TransUserHealthAdvice tuha = new TransUserHealthAdvice();
			tuha.setUserId(userId);
			Long replierAccountId = AuthService.getTokenDetail(token).getVerifyId();
			tuha.setAdviserAccountId(replierAccountId);
			tuha.setAdvice(advice);
			TransUserHealthAdviceRepo.save(tuha);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
}
