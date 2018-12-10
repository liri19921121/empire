package com.tom.lemenintl.service;

import com.tom.lemenintl.entity.*;
import com.tom.lemenintl.repo.*;
import com.tom.lemenintl.utils.RecordCodeUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.LocalDateTime;


/**
 * 咨询、申请类服务
 * @author tommy
 *
 */
@Service
public class ContactService {
	@Autowired
	TransFreeConsultRepo TransFreeConsultRepo;
	@Autowired
	TransFreeConsultItemRepo TransFreeConsultItemRepo;

	@Autowired
	TransOverseaVideochatRepo TransOverseaVideochatRepo;

	@Autowired
	TransOverseaConsultRepo TransOverseaConsultRepo;

	@Autowired
	TransOverseaConsultItemRepo TransOverseaConsultItemRepo;

	@Autowired
	TransHealthProductRepo TransHealthProductRepo;

	@Autowired
	TransHealthProductApplyRepo TransHealthProductApplyRepo;

	@Autowired
	TransHealthArticleRepo TransHealthArticleRepo;

	@Autowired
	TransVipProductApplyRepo TransVipProductApplyRepo;

	@Transactional
	public void T1101(String content, Long attachmentFile1, Long attachmentFile2, Long attachmentFile3,
			Long attachmentFile4, Long attachmentFile5, Long userId) throws Exception {
		TransFreeConsult entity = new TransFreeConsult();
		entity.setUserId(userId);
		entity.setContent(content);
		entity.setAttachmentFile1(attachmentFile1);
		entity.setAttachmentFile2(attachmentFile2);
		entity.setAttachmentFile3(attachmentFile3);
		entity.setAttachmentFile4(attachmentFile4);
		entity.setAttachmentFile5(attachmentFile5);
		TransFreeConsult entitySaved = TransFreeConsultRepo.save(entity);

		// 更新Code
		RecordCodeUtils.genCode(entitySaved);
		TransFreeConsultRepo.save(entitySaved);

		// 插入消息
		TransFreeConsultItem item = new TransFreeConsultItem();
		item.setFreeConsultId(entitySaved.getId());
		item.setUserId(userId);
		item.setContent(content);
		TransFreeConsultItemRepo.save(item);
	}

	@Transactional
	public void T1105(Long overseaExpertId, String scheduledPeriod, String content, String question1, String question2,
			String question3, String question4, String question5, Long attachmentFile1, Long attachmentFile2,
			Long attachmentFile3, Long attachmentFile4, Long attachmentFile5, Long userId) {

		TransOverseaVideochat entity = new TransOverseaVideochat();
		entity.setUserId(userId);
		entity.setContent(content);
		entity.setOverseaExpertId(overseaExpertId);
		entity.setScheduledPeriod(scheduledPeriod);

		Long plusWeeks = 0L;
		// 预约周期 1:本周、2:下周、3:下下周
		if ("1".equals(scheduledPeriod)) {
			plusWeeks = 0L;
		} else if ("2".equals(scheduledPeriod)) {
			plusWeeks = 1L;
		} else {
			plusWeeks = 2L;
		}

		entity.setScheduledDateStart(LocalDate.now().with(DayOfWeek.MONDAY).plusWeeks(plusWeeks));
		entity.setScheduledDateEnd(LocalDate.now().with(DayOfWeek.SUNDAY).plusWeeks(plusWeeks));

		entity.setAttachmentFile1(attachmentFile1);
		entity.setAttachmentFile2(attachmentFile2);
		entity.setAttachmentFile3(attachmentFile3);
		entity.setAttachmentFile4(attachmentFile4);
		entity.setAttachmentFile5(attachmentFile5);

		entity.setQuestion1(question1);
		entity.setQuestion2(question2);
		entity.setQuestion3(question3);
		entity.setQuestion4(question4);
		entity.setQuestion5(question5);

		TransOverseaVideochat entitySaved = TransOverseaVideochatRepo.save(entity);

		// 更新Code
		RecordCodeUtils.genCode(entitySaved);
		TransOverseaVideochatRepo.save(entitySaved);
	}

	@Transactional
	public void T1113(Long expertId, String content, Long attachmentFile1, Long attachmentFile2, Long attachmentFile3,
			Long attachmentFile4, Long attachmentFile5, Long userId) {
		TransOverseaConsult entity = new TransOverseaConsult();
		entity.setUserId(userId);
		entity.setOverseaExpertId(expertId);
		entity.setContent(content);

		entity.setAttachmentFile1(attachmentFile1);
		entity.setAttachmentFile2(attachmentFile2);
		entity.setAttachmentFile3(attachmentFile3);
		entity.setAttachmentFile4(attachmentFile4);
		entity.setAttachmentFile5(attachmentFile5);

		TransOverseaConsult entitySaved = TransOverseaConsultRepo.save(entity);

		// 更新Code
		RecordCodeUtils.genCode(entitySaved);
		TransOverseaConsultRepo.save(entitySaved);

	}

	@Transactional
	public void saveOverseaConsultItem(String content, Long topicId, Long userId) throws Exception {
		TransOverseaConsult topicEntity = TransOverseaConsultRepo.findById(topicId).get();
		// 保存topic更新时间
		topicEntity.setUpdateTime(LocalDateTime.now());
		TransOverseaConsultRepo.save(topicEntity);

		TransOverseaConsultItem entity = new TransOverseaConsultItem();
		entity.setContent(content);
		entity.setOverseaConsultId(topicId);
		entity.setUserId(userId);
		TransOverseaConsultItemRepo.save(entity);
	}

	@Transactional
	public void T1206(Long healthProductId, Long userId) throws Exception {
		TransHealthProduct productEntity = TransHealthProductRepo.findById(healthProductId).get();
		// 报名数+1
		productEntity.setApplyCount(productEntity.getApplyCount() + 1);
		TransHealthProductRepo.save(productEntity);

		//
		TransHealthProductApply applyEntity = new TransHealthProductApply();
		applyEntity.setUserId(userId);
		applyEntity.setHealthProductId(healthProductId);
		TransHealthProductApplyRepo.save(applyEntity);

	}

	@Transactional
	public void T1303(Long vipProductId, LocalDateTime applyTime, Long userId) {

		TransVipProductApply entity = new TransVipProductApply();
		entity.setUserId(userId);
		entity.setVipProductId(vipProductId);
		entity.setApplyTime(applyTime);
		TransVipProductApply entitySaved = TransVipProductApplyRepo.save(entity);

		// 更新Code
		RecordCodeUtils.genCode(entitySaved);
		TransVipProductApplyRepo.save(entitySaved);
	}

	@Transactional
	public void T2003(Long freeConsultId, Long replierAccountId, String content) {
		// 1、添加记录
		TransFreeConsultItem item = new TransFreeConsultItem();
		item.setFreeConsultId(freeConsultId);
		item.setReplierAccountId(replierAccountId);
		item.setContent(content);
		TransFreeConsultItemRepo.save(item);

		TransFreeConsult consult = TransFreeConsultRepo.findById(freeConsultId).get();
		consult.setLastReplierAccountId(replierAccountId);
		consult.setStatus("2");// 已回复
		consult.setUpdateTime(LocalDateTime.now());
		TransFreeConsultRepo.save(consult);
	}

	@Transactional
	public void T2004(Long freeConsultId, Long replierAccountId, String content) {
		// 1、添加记录
		TransFreeConsultItem item = new TransFreeConsultItem();
		item.setFreeConsultId(freeConsultId);
		item.setReplierAccountId(replierAccountId);
		item.setContent(content);
		TransFreeConsultItemRepo.save(item);

		TransFreeConsult consult = TransFreeConsultRepo.findById(freeConsultId).get();
		consult.setLastReplierAccountId(replierAccountId);
		consult.setStatus("3");// 已回复
		consult.setUpdateTime(LocalDateTime.now());
		TransFreeConsultRepo.save(consult);
	}

	@Transactional
	public void saveFreeConsultItem(String content, Long topicId, Long userId) throws Exception {
		TransFreeConsult topicEntity = TransFreeConsultRepo.findById(topicId).get();
		// 保存topic更新时间
		topicEntity.setUpdateTime(LocalDateTime.now());
		TransFreeConsultRepo.save(topicEntity);

		TransFreeConsultItem entity = new TransFreeConsultItem();
		entity.setContent(content);
		entity.setFreeConsultId(topicId);
		entity.setUserId(userId);
		TransFreeConsultItemRepo.save(entity);
	}

	@Autowired
	TransOverseaReferralApplyRepo TransOverseaReferralApplyRepo;

	@Transactional
	public void T2311(Long applyId, Long accountId) {

		TransOverseaReferralApply referralApply = TransOverseaReferralApplyRepo.findById(applyId).get();

		referralApply.setStatus("2");
		referralApply.setHandlerAccountId(accountId);
		referralApply.setHandleTime(LocalDateTime.now());

		referralApply.setUpdateTime(LocalDateTime.now());

		TransOverseaReferralApplyRepo.save(referralApply);
	}

	@Transactional
	public void T1110(Long userId, Long hospitalId) {
		TransOverseaReferralApply entity = new TransOverseaReferralApply();
		entity.setHospitalId(hospitalId);
		entity.setUserId(userId);

		TransOverseaReferralApplyRepo.save(entity);
	}
	
	@Transactional
	public void T1420(Long healthProductApplyId,Long userId) {
		TransHealthProductApply thpa = TransHealthProductApplyRepo.findByUserIdAndHealthProductId(userId,healthProductApplyId);
		TransHealthProduct thp = TransHealthProductRepo.findById(thpa.getHealthProductId()).get();
		thpa.setStatus("3");
		thpa.setUpdateTime(LocalDateTime.now());
		TransHealthProductApplyRepo.save(thpa);
		Integer count = 0;
		if(thp.getApplyCount() > 0){
			count = thp.getApplyCount()-1;
		}
		thp.setApplyCount(count);
		thp.setUpdateTime(LocalDateTime.now());
		TransHealthProductRepo.save(thp);
	}

	public Boolean T1119(Long overseaExpertId,String scheduledPeriod){
		Long plusWeeks = 0L;
		// 预约周期 1:本周、2:下周、3:下下周
		if ("1".equals(scheduledPeriod)) {
			plusWeeks = 0L;
		} else if ("2".equals(scheduledPeriod)) {
			plusWeeks = 1L;
		} else {
			plusWeeks = 2L;
		}
		LocalDate start = LocalDate.now().with(DayOfWeek.MONDAY).plusWeeks(plusWeeks);
		
		Long cou = TransOverseaVideochatRepo.T1119(start,overseaExpertId);
		if(cou == null || cou < 10){
			return true;
		}else{
			return false;
		}
	}

			
}
