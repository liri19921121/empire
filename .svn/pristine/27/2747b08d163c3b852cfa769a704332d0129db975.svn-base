package com.tom.lemenintl.service;

import com.tom.lemenintl.common.entity.SysWeixinUser;
import com.tom.lemenintl.common.repo.SysWeixinUserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.time.LocalDate;
import java.time.LocalDateTime;

/**
 * 会员类服务
 * 
 * @author tommy
 *
 */
@Service
public class MemberService {

	@Autowired
	SysWeixinUserRepo SysWeixinUserRepo;

	public void T1405(String name, String sex, LocalDate birthDate, Float height, Float weight, String mobile,
			Long userId) {
		SysWeixinUser user = SysWeixinUserRepo.findById(userId).get();
		if (!StringUtils.isEmpty(name)) {
			user.setUserName(name);
		}

		if (!StringUtils.isEmpty(sex)) {
			user.setSex(sex);
		}

		if (!StringUtils.isEmpty(birthDate)) {
			user.setBirthDate(birthDate);
		}

		if (!StringUtils.isEmpty(height)) {
			user.setHeight(height);
		}

		if (!StringUtils.isEmpty(weight)) {
			user.setWeight(weight);
		}

		if (!StringUtils.isEmpty(mobile)) {
			user.setMobile(mobile);
		}

		if (!StringUtils.isEmpty(user.getRegisteTime())) {
			user.setRegisteTime(LocalDateTime.now());
		}
		if (!StringUtils.isEmpty(user.getUserLevel())) {
			user.setUserLevel("1");// 填写完资料就成为普通用户
		}

		user.setUpdateTime(LocalDateTime.now());
		SysWeixinUserRepo.save(user);
	}
}
