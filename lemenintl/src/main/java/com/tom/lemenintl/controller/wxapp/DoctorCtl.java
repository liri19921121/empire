package com.tom.lemenintl.controller.wxapp;

import com.tom.lemenintl.common.RestHttpReply;
import com.tom.lemenintl.common.entity.SysAccount;
import com.tom.lemenintl.common.repo.SysAccountRepo;
import com.tom.lemenintl.common.service.AuthService;
import com.tom.lemenintl.common.utils.CommonUtils;
import com.tom.lemenintl.repo.*;
import com.tom.lemenintl.service.ContactService;
import com.tom.lemenintl.vo.T1117;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;
import java.util.List;

@RestController
public class DoctorCtl {

	@Autowired
	AuthService AuthService;
	@Autowired
	ContactService ContactService;

	@Autowired
	TransFreeConsultRepo TransFreeConsultRepo;

	@Autowired
	TransDisplayBannerRepo TransDisplayBannerRepo;

	@Autowired
	TransOverseaExpertRepo TransOverseaExpertRepo;

	@Autowired
	TransOverseaVideochatRepo TransOverseaVideochatRepo;

	@Autowired
	TransOverseaHospitalRepo TransOverseaHospitalRepo;

	@Autowired
	TransOverseaConsultRepo TransOverseaConsultRepo;

	@RequestMapping("/T1101")
	public RestHttpReply T1101(@RequestParam String content, Long attachmentFile1, Long attachmentFile2,
			Long attachmentFile3, Long attachmentFile4, Long attachmentFile5, @RequestHeader String token)
			throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			// 获取userId
			Long userId = AuthService.getTokenDetail(token).getVerifyId();

			// 保存主题
			ContactService.T1101(content, attachmentFile1, attachmentFile2, attachmentFile3, attachmentFile4,
					attachmentFile5, userId);

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T1102")
	public RestHttpReply T1102() throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list", TransDisplayBannerRepo.findByEnableIsTrueAndBannerTypeOrderByOrderNum("3"));

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T1103")
	public RestHttpReply T1103(Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list", TransOverseaExpertRepo.T1103(pageable));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T1104")
	public RestHttpReply T1104(@RequestParam Long expertId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("entity", TransOverseaExpertRepo.T1104(expertId));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T1105")
	public RestHttpReply T1105(@RequestParam Long expertId, @RequestParam String scheduledPeriod,
			String content, String question1, String question2, String question3, String question4,
			String question5, Long attachmentFile1, Long attachmentFile2, Long attachmentFile3, Long attachmentFile4,
			Long attachmentFile5, @RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			// 获取userId
			Long userId = AuthService.getTokenDetail(token).getVerifyId();
			ContactService.T1105(expertId, scheduledPeriod, content, question1, question2, question3, question4,
					question5, attachmentFile1, attachmentFile2, attachmentFile3, attachmentFile4, attachmentFile5,
					userId);

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T1106")
	public RestHttpReply T1106(Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list", TransOverseaHospitalRepo.findByEnableIsTrue(pageable));

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T1107")
	public RestHttpReply T1107(@RequestParam Long hospitalId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("entity", TransOverseaHospitalRepo.T1107(hospitalId));

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	TransDiseaseRepo TransDiseaseRepo;

	@RequestMapping("/T1108")
	public RestHttpReply T1108(Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list", TransDiseaseRepo.findByEnableIsTrue(pageable));

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T1109")
	public RestHttpReply T1109(@RequestParam Long diseaseId, Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list", TransOverseaHospitalRepo.findOverseaHospitalByDiseaseId(diseaseId, pageable));

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	TransOverseaReferralApplyRepo TransOverseaReferralApplyRepo;

	@RequestMapping("/T1110")
	public RestHttpReply T1110(@RequestParam Long hospitalId, @RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			// 获取userId
			Long userId = AuthService.getTokenDetail(token).getVerifyId();
			ContactService.T1110(userId, hospitalId);

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T1111")
	public RestHttpReply T1111(Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list", TransOverseaExpertRepo.T1111(pageable));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T1112")
	public RestHttpReply T1112(@RequestParam Long expertId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("entity", TransOverseaExpertRepo.T1112(expertId));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T1113")
	public RestHttpReply T1113(@RequestParam Long expertId, @RequestParam String content, Long attachmentFile1,
			Long attachmentFile2, Long attachmentFile3, Long attachmentFile4, Long attachmentFile5,
			@RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			// 获取userId
			Long userId = AuthService.getTokenDetail(token).getVerifyId();
			ContactService.T1113(expertId, content, attachmentFile1, attachmentFile2, attachmentFile3, attachmentFile4,
					attachmentFile5, userId);

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@Autowired
	SysAccountRepo SysAccountRepo;
	
	@RequestMapping("/T1114")
	public RestHttpReply T1114(@RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long userId = AuthService.getTokenDetail(token).getVerifyId();
			SysAccount s = SysAccountRepo.findById(userId).get();
			reply.putData("entity", s);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@RequestMapping("/T1115")
	public RestHttpReply T1115(@RequestHeader String token,@RequestParam String password) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long userId = AuthService.getTokenDetail(token).getVerifyId();
			SysAccount s = SysAccountRepo.findById(userId).get();
			s.setPassword(password);
			s.setUpdateTime(LocalDateTime.now());
			SysAccountRepo.save(s);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@RequestMapping("/T1116")
	public RestHttpReply T1116(@RequestHeader String token,@RequestParam Integer avatarId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long userId = AuthService.getTokenDetail(token).getVerifyId();
			SysAccount s = SysAccountRepo.findById(userId).get();
			s.setAvatarId(avatarId);
			s.setUpdateTime(LocalDateTime.now());
			SysAccountRepo.save(s);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
    
	@Autowired
	TransVipRealtimeChatRepo TransVipRealtimeChatRepo;
	
	@RequestMapping("/T1117")
	public RestHttpReply T1117(Pageable pageable,@RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long doctorId = AuthService.getTokenDetail(token).getVerifyId();
			Page<T1117> page =  TransVipRealtimeChatRepo.T1117(doctorId, pageable);
		    List<T1117> list = page.getContent();
		    for(T1117 t : list ){
			   if(t.getBirthDate() == null){
				   t.setAge(null);
			   }else{
				   int bor = Integer.valueOf(t.getBirthDate().toString().substring(0, 4));
				   int now = LocalDateTime.now().getYear();
				   t.setAge(String.valueOf(now-bor));
			   }
		    }
		    reply.putData("list",list);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@RequestMapping("/T1118")
	public RestHttpReply T1118(Pageable pageable,@RequestHeader String token,@RequestParam Long userId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long doctorId = AuthService.getTokenDetail(token).getVerifyId();
			reply.putData("list", TransVipRealtimeChatRepo.findByReplierAccountIdAndVipUserIdOrderByCreateTimeAsc(doctorId, userId, pageable));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@RequestMapping("/T1119")
	public RestHttpReply T1119(@RequestParam Long overseaExpertId,@RequestParam String scheduledPeriod) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Boolean bo = ContactService.T1119(overseaExpertId, scheduledPeriod);
			reply.putData("entity", bo);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@RequestMapping("/T1120")
	public RestHttpReply T1106(Pageable pageable,@RequestParam String hospitalName) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			System.out.println(hospitalName);
			reply.putData("list", TransOverseaHospitalRepo.T1120(hospitalName,pageable));

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
}
