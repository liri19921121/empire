package com.tom.lemenintl.controller.wxapp;

import com.tom.lemenintl.common.RestHttpReply;
import com.tom.lemenintl.common.entity.SysWeixinUser;
import com.tom.lemenintl.common.exception.CustomerException;
import com.tom.lemenintl.common.repo.SysWeixinUserRepo;
import com.tom.lemenintl.common.service.AuthService;
import com.tom.lemenintl.common.utils.CommonUtils;
import com.tom.lemenintl.entity.*;
import com.tom.lemenintl.repo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDate;

@RestController
public class DiaryCtl {

	@Autowired
	AuthService AuthService;

	@Autowired
	TransUserMoodAdviceRepo TransUserMoodAdviceRepo;

	@RequestMapping("/T1001")
	public RestHttpReply T1001() throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list", TransUserMoodAdviceRepo.findByEnableIsTrue());

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	TransDisplayBannerRepo TransDisplayBannerRepo;

	@RequestMapping("/T1002")
	public RestHttpReply T1002() throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list", TransDisplayBannerRepo.findByEnableIsTrueAndBannerTypeOrderByOrderNum("1"));

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	TransUserDataStepRepo TransUserDataStepRepo;
	@Autowired
	TransUserDataMoodRepo TransUserDataMoodRepo;
	@Autowired
	TransUserDataMealRepo TransUserDataMealRepo;
	@Autowired
	TransUserDataBloodPressureRepo TransUserDataBloodPressureRepo;
	@Autowired
	TransUserDataBloodSugarRepo TransUserDataBloodSugarRepo;
	@Autowired
	TransUserDataWeightRepo TransUserDataWeightRepo;

	@RequestMapping("/T1003")
	public RestHttpReply T1003(@RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate date,
			@RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {

			// 获取userId
			Long userId = AuthService.getTokenDetail(token).getVerifyId();

			// 空或者大于当前时间、默认取当天
			if (date == null || date.isAfter(LocalDate.now())) {
				date = LocalDate.now();
			}
			reply.putData("stepData",
					TransUserDataStepRepo.findTopByRecordDateAndUserIdOrderByCreateTimeDesc(date, userId));
			reply.putData("moodData",
					TransUserDataMoodRepo.findTopByRecordDateAndUserIdOrderByCreateTimeDesc(date, userId));
			reply.putData("mealData",
					TransUserDataMealRepo.findTopByRecordDateAndUserIdOrderByCreateTimeDesc(date, userId));
			reply.putData("bloodPressureData",
					TransUserDataBloodPressureRepo.findTop3ByRecordDateAndUserIdOrderByCreateTimeDesc(date, userId));
			reply.putData("bloodSugarData",
					TransUserDataBloodSugarRepo.findTop3ByRecordDateAndUserIdOrderByCreateTimeDesc(date, userId));
			reply.putData("weightData",
					TransUserDataWeightRepo.findTop3ByRecordDateAndUserIdOrderByCreateTimeDesc(date, userId));

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T1004")
	public RestHttpReply T1004(@RequestParam Integer step, @RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			// 获取userId
			Long userId = AuthService.getTokenDetail(token).getVerifyId();
			Integer targetStep = SysWeixinUserRepo.findById(userId).get().getTargetStep();

			TransUserDataStep entity = new TransUserDataStep();
			entity.setUserId(userId);
			entity.setCount(step);
			entity.setTargetStep(targetStep);

			TransUserDataStepRepo.save(entity);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T1005")
	public RestHttpReply T1005(@RequestParam Integer score, @RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			// 获取userId
			Long userId = AuthService.getTokenDetail(token).getVerifyId();

			TransUserDataMood entity = new TransUserDataMood();
			entity.setUserId(userId);
			entity.setScroe(score);
			TransUserDataMoodRepo.save(entity);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T1006")
	public RestHttpReply T1006(Long breakfastImgFileId, Long lunchImgFileId, Long supperImgFileId,
			@RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			// 获取userId
			Long userId = AuthService.getTokenDetail(token).getVerifyId();
			TransUserDataMeal entity = TransUserDataMealRepo
					.findTopByRecordDateAndUserIdOrderByCreateTimeDesc(LocalDate.now(), userId);

			if (entity == null) {
				entity = new TransUserDataMeal();
				entity.setUserId(userId);
			}

			if (breakfastImgFileId != null) {
				entity.setBreakfastImgFileId(breakfastImgFileId);
			}
			if (lunchImgFileId != null) {
				entity.setLunchImgFileId(lunchImgFileId);
			}
			if (supperImgFileId != null) {
				entity.setSupperImgFileId(supperImgFileId);
			}

			TransUserDataMealRepo.save(entity);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T1007")
	public RestHttpReply T1007(@RequestParam Integer systolic, @RequestParam Integer diastolic,
			@RequestParam Integer pulseRate, @RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			// 获取userId
			Long userId = AuthService.getTokenDetail(token).getVerifyId();

			TransUserDataBloodPressure entity = new TransUserDataBloodPressure();
			entity.setUserId(userId);
			entity.setSystolic(systolic);
			entity.setDiastolic(diastolic);
			entity.setPulseRate(pulseRate);
			TransUserDataBloodPressureRepo.save(entity);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T1008")
	public RestHttpReply T1008(@RequestParam Float glycemicIndex, @RequestParam Boolean isEmptyStomach,
			@RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			// 获取userId
			Long userId = AuthService.getTokenDetail(token).getVerifyId();

			TransUserDataBloodSugar entity = new TransUserDataBloodSugar();
			entity.setUserId(userId);
			entity.setGlycemicIndex(glycemicIndex);
			entity.setIsEmptyStomach(isEmptyStomach);
			TransUserDataBloodSugarRepo.save(entity);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	SysWeixinUserRepo SysWeixinUserRepo;

	@RequestMapping("/T1009")
	public RestHttpReply T1009(@RequestParam Float weight, @RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			// 获取userId
			Long userId = AuthService.getTokenDetail(token).getVerifyId();

			// 获取用户身高
			Float height = SysWeixinUserRepo.findById(userId).get().getHeight();
			if (height == null || height <= 0) {
				throw new CustomerException("用户身高数据未填写或填写错误，无法计算BMI.");
			}

			TransUserDataWeight entity = new TransUserDataWeight();
			entity.setUserId(userId);
			entity.setWeight(weight);
			// 计算BMI:体质指数（BMI）=体重（kg）÷身高^2（m）
			entity.setBMI(weight / (height * height));
			TransUserDataWeightRepo.save(entity);

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T1010")
	public RestHttpReply T1010(@RequestParam Integer targetStep, @RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			// 获取userId
			Long userId = AuthService.getTokenDetail(token).getVerifyId();

			SysWeixinUser user = SysWeixinUserRepo.findById(userId).get();

			user.setTargetStep(targetStep);
			SysWeixinUserRepo.save(user);

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

}
