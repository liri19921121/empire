package com.tom.lemenintl.common.service;

import com.tom.lemenintl.common.entity.SysWeixinUser;
import com.tom.lemenintl.common.repo.SysAccountRepo;
import com.tom.lemenintl.common.repo.SysWeixinUserRepo;
import com.tom.lemenintl.utils.RecordCodeUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import javax.transaction.Transactional;
import java.time.LocalDateTime;
import java.util.List;

@Service
public class UserService {

	@Autowired
	SysAccountRepo SysAccountRepo;
	@Autowired
	SysWeixinUserRepo SysWeixinUserRepo;

	public Page<SysWeixinUser> listWeixinUser(Pageable pageable) {
		return SysWeixinUserRepo.findAll(pageable);
	}

	/**
	 * 微信登陆后，保存简单用户信息,openid，并取得wxUserId用于生成token
	 * 
	 * @param entity
	 * @return
	 */
	@Transactional
	public SysWeixinUser saveUser(SysWeixinUser entity) {
		List<SysWeixinUser> existsUsers = SysWeixinUserRepo.findByOpenId(entity.getOpenId());

		if (CollectionUtils.isEmpty(existsUsers)) {
			SysWeixinUser savedWeixinUser = SysWeixinUserRepo.save(entity);
			RecordCodeUtils.genCode(savedWeixinUser);
			return SysWeixinUserRepo.save(savedWeixinUser);
		} else {
			// 找到多个openid相同的记录，删除多余的记录
			if (existsUsers.size() > 1) {
				for (int i = 1; i < existsUsers.size(); i++) {
					SysWeixinUser unnecessary = existsUsers.get(i);
					SysWeixinUserRepo.delete(unnecessary);
				}
			}
			// 返回找到的第一个user
			SysWeixinUser reserved = existsUsers.get(0);
			reserved.setLoginCount(reserved.getLoginCount());
			reserved.setLastLoginTime(LocalDateTime.now());
			return SysWeixinUserRepo.save(reserved);
		}
	}

	/**
	 * 用户授权后，取得用户信息并保存或者更新。记录用户的详细信息
	 * 
	 * @param entity
	 * @return
	 */
	@Transactional
	public SysWeixinUser saveUserInfo(SysWeixinUser entity) {
		List<SysWeixinUser> existsUsers = SysWeixinUserRepo.findByOpenId(entity.getOpenId());

		if (CollectionUtils.isEmpty(existsUsers)) {
			return SysWeixinUserRepo.save(entity);
		} else {
			// 找到多个openid相同的记录，删除多余的记录
			if (existsUsers.size() > 1) {
				for (int i = 1; i < existsUsers.size(); i++) {
					SysWeixinUser unnecessary = existsUsers.get(i);
					SysWeixinUserRepo.delete(unnecessary);
				}
			}

			// 赋值第一个user的其它属性
			SysWeixinUser source = existsUsers.get(0);
			entity.setId(source.getId());
			entity.setCreateTime(source.getCreateTime());
			entity.setLastLoginTime(LocalDateTime.now());
			return SysWeixinUserRepo.save(entity);
		}
	}

}
