package com.tom.lemenintl.controller.pc;

import com.tom.lemenintl.common.RestHttpReply;
import com.tom.lemenintl.common.service.AuthService;
import com.tom.lemenintl.common.utils.CommonUtils;
import com.tom.lemenintl.repo.TransDiseaseRepo;
import com.tom.lemenintl.repo.TransOverseaHospitalDiseaseRepo;
import com.tom.lemenintl.repo.TransOverseaHospitalRepo;
import com.tom.lemenintl.repo.TransOverseaReferralApplyRepo;
import com.tom.lemenintl.service.ContactService;
import com.tom.lemenintl.service.HospitalUnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class OverseaReferralCtl {
	@Autowired
	HospitalUnitService HospitalUnitService;

	@Autowired
	TransOverseaHospitalRepo TransOverseaHospitalRepo;

	@RequestMapping("/T2301")
	public RestHttpReply T2301(String name, Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list", TransOverseaHospitalRepo.T2301(name, pageable));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T2302")
	public RestHttpReply T2302(@RequestParam Long hospitalId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("entity", TransOverseaHospitalRepo.T2302(hospitalId));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T2303")
	public RestHttpReply T2303(Long id, String name, Integer orderNum, String nationCode, String special,
			Boolean enable, Long coverFileId, String description) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			HospitalUnitService.T2303(id, name, orderNum, nationCode, special, enable, coverFileId, description);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T2304")
	public RestHttpReply T2304(Long hospitalId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			HospitalUnitService.T2304(hospitalId);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	TransDiseaseRepo TransDiseaseRepo;

	@RequestMapping("/T2305")
	public RestHttpReply T2305(String name, Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list", TransDiseaseRepo.T2305(name, pageable));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T2306")
	public RestHttpReply T2306(@RequestParam Long diseaseId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("entity", TransDiseaseRepo.findById(diseaseId).get());
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T2307")
	public RestHttpReply T2307(Long id, String name, Integer orderNum, Boolean enable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			HospitalUnitService.T2307(id, name, orderNum, enable);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	TransOverseaHospitalDiseaseRepo TransOverseaHospitalDiseaseRepo;

	@RequestMapping("/T2308")
	public RestHttpReply T2308(@RequestParam Long hospitalId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list", TransOverseaHospitalDiseaseRepo.findByHospitalId(hospitalId));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T2309")
	public RestHttpReply T2309(@RequestParam Long hospitalId, @RequestParam List<Long> diseaseIdList) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			HospitalUnitService.T2309(hospitalId, diseaseIdList);

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	TransOverseaReferralApplyRepo TransOverseaReferralApplyRepo;

	@RequestMapping("/T2310")
	public RestHttpReply T2310(Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list", TransOverseaReferralApplyRepo.T2310(pageable));

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	AuthService AuthService;
	@Autowired
	ContactService ContactService;

	@RequestMapping("/T2311")
	public RestHttpReply T2311(@RequestParam Long applyId, @RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long accountId = AuthService.getTokenDetail(token).getVerifyId();
			ContactService.T2311(applyId, accountId);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

}
