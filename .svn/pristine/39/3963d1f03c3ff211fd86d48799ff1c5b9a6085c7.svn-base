package com.tom.lemenintl.service;

import com.tom.lemenintl.common.RestHttpReply;
import com.tom.lemenintl.common.service.AuthService;
import com.tom.lemenintl.common.utils.CommonUtils;
import com.tom.lemenintl.entity.TransHealthProduct;
import com.tom.lemenintl.entity.TransOverseaConsult;
import com.tom.lemenintl.entity.TransOverseaConsultItem;
import com.tom.lemenintl.entity.TransVipProduct;
import com.tom.lemenintl.repo.TransHealthProductRepo;
import com.tom.lemenintl.repo.TransOverseaConsultItemRepo;
import com.tom.lemenintl.repo.TransOverseaConsultRepo;
import com.tom.lemenintl.repo.TransVipProductRepo;
import com.tom.lemenintl.utils.RecordCodeUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.math.BigDecimal;
import java.time.LocalDateTime;

/**
 * 服务、产品类服务
 * 
 * @author tommy
 *
 */
@Service
public class ProductService {
	@Autowired
	TransHealthProductRepo TransHealthProductRepo;

	@Transactional
	public void T2406(Long id, String name, Integer orderNum, Boolean enable, String contentHtml, Long coverFileId,
			String special, String recommend, BigDecimal originalPrice, BigDecimal discountPrice,
			Long creatorAccountId) {
		TransHealthProduct product;

		if (id == null) {
			product = new TransHealthProduct();
			product.setCreatorAccountId(creatorAccountId);
		} else
			product = TransHealthProductRepo.findById(id).get();

		product.setName(name);
		product.setOrderNum(orderNum);
		product.setContentHtml(contentHtml);
		product.setCoverFileId(coverFileId);
		product.setSpecial(special);
		product.setRecommend(recommend);
		product.setOriginalPrice(originalPrice);
		product.setDiscountPrice(discountPrice);
		product.setEnable(enable);

		product.setUpdateTime(LocalDateTime.now());

		TransHealthProduct savedProduct = TransHealthProductRepo.save(product);
		if (id == null) {
			RecordCodeUtils.genCode(savedProduct);
			TransHealthProductRepo.save(savedProduct);
		}
	}

	@Autowired
	TransVipProductRepo TransVipProductRepo;

	public void T2505(Long id, String name, Integer orderNum, String vipProductType, String servicePeriod,
			String applyTimeStart1, String applyTimeEnd1, String applyTimeStart2, String applyTimeEnd2,
			Integer maxCount, Boolean enable, Long creatorAccountId) {
		TransVipProduct product;

		if (id == null) {
			product = new TransVipProduct();
			product.setCreatorAccountId(creatorAccountId);
		} else
			product = TransVipProductRepo.findById(id).get();

		product.setName(name);
		product.setOrderNum(orderNum);
		product.setVipProductType(vipProductType);
		product.setServicePeriod(servicePeriod);
		product.setApplyTimeStart1(applyTimeStart1);
		product.setApplyTimeEnd1(applyTimeEnd1);
		product.setApplyTimeStart2(applyTimeStart2);
		product.setApplyTimeEnd2(applyTimeEnd2);
		product.setMaxCount(maxCount);
		product.setEnable(enable);

		product.setUpdateTime(LocalDateTime.now());

		TransVipProduct savedProduct = TransVipProductRepo.save(product);
		if (id == null) {
			RecordCodeUtils.genCode(savedProduct);
			TransVipProductRepo.save(savedProduct);
		}

	}

	@Autowired
	TransOverseaConsultItemRepo TransOverseaConsultItemRepo;
	@Autowired
	TransOverseaConsultRepo TransOverseaConsultRepo;
	@Autowired
	AuthService AuthService;
	
	@Transactional
	public void T2108(Long overseaConsultId,String content,String token,RestHttpReply reply) {
		TransOverseaConsult toc = TransOverseaConsultRepo.findById(overseaConsultId).get();
		toc.setStatus("3");
		toc.setUpdateTime(LocalDateTime.now());
		Long replierAccountId=null;
		try {
			 replierAccountId = AuthService.getTokenDetail(token).getVerifyId();
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		toc.setLastReplierAccountId(replierAccountId);
		toc.setContent(content);
		TransOverseaConsultItem toci = new TransOverseaConsultItem();
		toci.setContent(content);
		toci.setOverseaConsultId(overseaConsultId);
		toci.setReplierAccountId(replierAccountId);
		TransOverseaConsultItemRepo.save(toci);
		TransOverseaConsultRepo.save(toc);
	}
	
	@Transactional
	public void T2109(Long overseaConsultId,String content,String token,RestHttpReply reply) {
		TransOverseaConsult toc = TransOverseaConsultRepo.findById(overseaConsultId).get();
		toc.setStatus("4");
		toc.setUpdateTime(LocalDateTime.now());
		Long replierAccountId=null;
		try {
			 replierAccountId = AuthService.getTokenDetail(token).getVerifyId();
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		toc.setLastReplierAccountId(replierAccountId);
		toc.setContent(content);
		TransOverseaConsultItem toci = new TransOverseaConsultItem();
		toci.setContent(content);
		toci.setOverseaConsultId(overseaConsultId);
		toci.setReplierAccountId(replierAccountId);
		TransOverseaConsultItemRepo.save(toci);
		TransOverseaConsultRepo.save(toc);
	}
	
	@Transactional
	public void T2110(Long overseaConsultId,String content,String token,RestHttpReply reply) {
		TransOverseaConsult toc = TransOverseaConsultRepo.findById(overseaConsultId).get();
		toc.setStatus("2");
		toc.setUpdateTime(LocalDateTime.now());
		Long replierAccountId=null;
		try {
			 replierAccountId = AuthService.getTokenDetail(token).getVerifyId();
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		toc.setLastReplierAccountId(replierAccountId);
		toc.setContent(content);
		TransOverseaConsultItem toci = new TransOverseaConsultItem();
		toci.setContent(content);
		toci.setOverseaConsultId(overseaConsultId);
		toci.setReplierAccountId(replierAccountId);
		TransOverseaConsultItemRepo.save(toci);
		TransOverseaConsultRepo.save(toc);
	}
}
