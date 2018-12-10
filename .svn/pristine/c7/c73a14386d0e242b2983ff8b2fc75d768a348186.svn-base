package com.tom.lemenintl.controller.wxapp;

import com.tom.lemenintl.common.RestHttpReply;
import com.tom.lemenintl.common.exception.SmsApiException;
import com.tom.lemenintl.common.repo.SysWeixinUserRepo;
import com.tom.lemenintl.common.service.AuthService;
import com.tom.lemenintl.common.service.SmsService;
import com.tom.lemenintl.common.utils.CommonUtils;
import com.tom.lemenintl.entity.TransFreeConsultItem;
import com.tom.lemenintl.entity.TransOverseaVideochat;
import com.tom.lemenintl.entity.TransVipProductApply;
import com.tom.lemenintl.repo.*;
import com.tom.lemenintl.service.ContactService;
import com.tom.lemenintl.service.DeviceService;
import com.tom.lemenintl.service.MemberService;
import com.tom.lemenintl.vo.T1417;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDate;
import java.time.LocalDateTime;

@RestController
public class WodeCtl {

	@Autowired
	AuthService AuthService;

	@Autowired
	SysWeixinUserRepo SysWeixinUserRepo;

	@Autowired
	TransFreeConsultRepo TransFreeConsultRepo;
	@Autowired
	ContactService ContactService;

	@Autowired
	MemberService MemberService;

	@Autowired
	SmsService SmsService;

	@RequestMapping("/T1401")
	public RestHttpReply T1401(@RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long userId = AuthService.getTokenDetail(token).getVerifyId();
			reply.putData("userInfo", SysWeixinUserRepo.findById(userId).get());

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	TransDeviceRepo TransDeviceRepo;

	@RequestMapping("/T1402")
	public RestHttpReply T1402(@RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long userId = AuthService.getTokenDetail(token).getVerifyId();
			reply.putData("list", TransDeviceRepo.findByUserId(userId));

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	DeviceService DeviceService;

	@RequestMapping("/T1403")
	public RestHttpReply T1403(@RequestParam String deviceType, String deviceName, String deviceAttr1,
			String deviceAttr2, String deviceAttr3, String deviceAttr4, String deviceAttr5, @RequestHeader String token)
			throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long userId = AuthService.getTokenDetail(token).getVerifyId();

			DeviceService.T1403(deviceType, deviceName, deviceAttr1, deviceAttr2, deviceAttr3, deviceAttr4, deviceAttr5,
					userId);

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T1404")
	public RestHttpReply T1404(@RequestParam Long deviceId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			TransDeviceRepo.deleteById(deviceId);

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T1405")
	public RestHttpReply T1405(String name, String sex,
                               @RequestParam(required = false) @DateTimeFormat(iso = ISO.DATE) LocalDate birthDate, Float height,
                               Float weight, String mobile, @RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long userId = AuthService.getTokenDetail(token).getVerifyId();
			MemberService.T1405(name, sex, birthDate, height, weight, mobile, userId);

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T1406")
	public RestHttpReply T1406(@RequestParam String mobile, @RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long userId = AuthService.getTokenDetail(token).getVerifyId();
			Long resultCode = SmsService.T1406(mobile, userId);

			// 处理为integer
			if (resultCode <= 0) {
				throw new SmsApiException(resultCode);// 发送失败抛出异常
			}

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T1407")
	public RestHttpReply T1407(@RequestParam String vcode, @RequestHeader String phone, @RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long userId = AuthService.getTokenDetail(token).getVerifyId();
			SmsService.T1407(vcode, phone,userId);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T1408")
	public RestHttpReply T1408(Pageable pageable, @RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long userId = AuthService.getTokenDetail(token).getVerifyId();
			reply.putData("list", TransFreeConsultRepo.findByUserId(userId, pageable));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	TransFreeConsultItemRepo TransFreeConsultItemRepo; 
	
	@RequestMapping("/T1409")
	public RestHttpReply T1409(@RequestParam Long freeConsultId,@RequestHeader String token, Pageable pageable)
			throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long accountId = AuthService.getTokenDetail(token).getVerifyId();
			reply.putData("list", TransFreeConsultItemRepo.T1409(accountId,freeConsultId, pageable));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T1410")
	public RestHttpReply T1410(@RequestParam Long freeConsultId, @RequestParam String content,
			@RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			// 获取userId
			Long userId = AuthService.getTokenDetail(token).getVerifyId();
			TransFreeConsultItem tfc = new TransFreeConsultItem();
			tfc.setFreeConsultId(freeConsultId);
			tfc.setUserId(userId);
			tfc.setContent(content);
			TransFreeConsultItemRepo.save(tfc);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	TransOverseaConsultRepo TransOverseaConsultRepo;

	@RequestMapping("/T1411")
	public RestHttpReply T1411(Pageable pageable, @RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long userId = (long) AuthService.getTokenDetail(token).getVerifyId();
			reply.putData("list", TransOverseaConsultRepo.findByUserId(userId, pageable));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@Autowired
	TransOverseaConsultItemRepo TransOverseaConsultItemRepo;
	
	@RequestMapping("/T1412")
	public RestHttpReply T1412( @RequestHeader String token,@RequestParam Long overseaConsultId, Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long userId = (long) AuthService.getTokenDetail(token).getVerifyId();
			reply.putData("list", TransOverseaConsultItemRepo.T1412(userId,overseaConsultId, pageable));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@RequestMapping("/T1413")
	public RestHttpReply saveOverseaConsultItem(@RequestParam Long overseaConsultId, @RequestParam String content,
			@RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long userId = AuthService.getTokenDetail(token).getVerifyId();
			ContactService.saveOverseaConsultItem(content, overseaConsultId, userId);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	TransOverseaVideochatRepo TransOverseaVideochatRepo;
	
	@RequestMapping("/T1414")
	public RestHttpReply T1414(Pageable pageable, @RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long userId = AuthService.getTokenDetail(token).getVerifyId();
			reply.putData("list", TransOverseaVideochatRepo.T1414(userId, pageable));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@RequestMapping("/T1415")
	public RestHttpReply T1415(Pageable pageable, @RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long userId = AuthService.getTokenDetail(token).getVerifyId();
			reply.putData("entity", TransOverseaVideochatRepo.T1415(userId,pageable));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@RequestMapping("/T1416")
	public RestHttpReply T1416( @RequestParam Long overseaVideochatId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			TransOverseaVideochat tov = TransOverseaVideochatRepo.findById(overseaVideochatId).get();
			tov.setStatus("4");
			tov.setUpdateTime(LocalDateTime.now());
			TransOverseaVideochatRepo.save(tov);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@Autowired
	TransVipProductApplyRepo TransVipProductApplyRepo;
	
	@RequestMapping("/T1417")
	public RestHttpReply T1417(Pageable pageable ,@RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long userId = AuthService.getTokenDetail(token).getVerifyId();
			Page<T1417> p= TransVipProductApplyRepo.T1417(userId, pageable);
			reply.putData("list", p);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@RequestMapping("/T1418")
	public RestHttpReply T1418(Pageable pageable ,@RequestParam Long vipProductId,@RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long userId =  (long) AuthService.getTokenDetail(token).getVerifyId();
			TransVipProductApply t = TransVipProductApplyRepo.findByUserIdAndVipProductId(userId, vipProductId);
			t.setStatus("3");
			t.setUpdateTime( LocalDateTime.now());
			TransVipProductApplyRepo.save(t);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@Autowired
	TransHealthProductApplyRepo TransHealthProductApplyRepo;
	
	@RequestMapping("/T1419")
	public RestHttpReply T1419(Pageable pageable ,@RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long userId = AuthService.getTokenDetail(token).getVerifyId();
			reply.putData("list", TransHealthProductApplyRepo.T1419(userId, pageable));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@Autowired
	TransHealthProductRepo TransHealthProductRepo;

	@RequestMapping("/T1420")
	public RestHttpReply T1420(@RequestParam Long healthProductApplyId,@RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long userId = (long) AuthService.getTokenDetail(token).getVerifyId();
			ContactService.T1420(healthProductApplyId, userId);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}






}
