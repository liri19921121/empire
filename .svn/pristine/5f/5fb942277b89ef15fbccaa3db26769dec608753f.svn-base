package com.tom.lemenintl.common.service;

import com.tom.lemenintl.common.entity.SysAccount;
import com.tom.lemenintl.common.entity.SysWeixinUser;
import com.tom.lemenintl.common.exception.LoginException;
import com.tom.lemenintl.common.exception.TokenValidException;
import com.tom.lemenintl.common.repo.SysAccountRepo;
import com.tom.lemenintl.common.repo.SysWeixinUserRepo;
import com.tom.lemenintl.common.utils.DateTimeUtils;
import com.tom.lemenintl.common.utils.TokenDetail;
import com.tom.lemenintl.common.utils.TokenUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

@Service
public class AuthService {

	@Autowired
	SysAccountRepo SysAccountRepo;

	@Autowired
	SysWeixinUserRepo SysWeixinUserRepo;

	public String login(String username, String password) throws Exception {

		if (StringUtils.isEmpty(username) || StringUtils.isEmpty(password))
			throw new LoginException("用户名或密码不能为空.");

		List<SysAccount> accounts = SysAccountRepo.findByUsername(username);
		if (CollectionUtils.isEmpty(accounts))
			throw new LoginException("账号 <" + username + "> 不存在.");

		SysAccount account = accounts.get(0);
		if (!account.getEnable())
			throw new LoginException("账号 <" + username + "> 已被禁用.");

		if (!password.equals(account.getPassword()))
			throw new LoginException("密码输入错误.");

		account.setLastLoginTime(LocalDateTime.now());
		SysAccountRepo.save(account);

		TokenDetail tokenDetail = new TokenDetail(account.getId(), TokenDetail.Scope.Account, null);
		return this.genToken(tokenDetail);
	}

	public Boolean logout(String token) {

		return true;
	}

	public SysWeixinUser getUserInfo(String token) throws Exception {
		return SysWeixinUserRepo.findById(getTokenDetail(token).getVerifyId()).get();
	}

	public SysWeixinUser getUserInfo(Long userId) throws Exception {
		return SysWeixinUserRepo.findById(userId).get();
	}

	public Boolean validateToken(String token) throws Exception {
		try {
			TokenUtils.getClaimsFromToken(token);
		} catch (Exception e) {
			throw new TokenValidException(token);
		}
		return Boolean.TRUE;
	}

	public String genToken(TokenDetail tokenDetail) throws Exception {
		// 默认为次日凌晨2点失效
		Date expirationDate = DateTimeUtils.convertToDate(LocalDate.now().plusDays(1).atTime(2, 0, 0));

		// 微信用户为用不过期
		if (TokenDetail.Scope.WeixinUser.equals(tokenDetail.getVerifyScope()))
			expirationDate = null;

		return TokenUtils.generateToken(tokenDetail, expirationDate);
	}

	public TokenDetail getTokenDetail(String token) throws Exception {
		return TokenUtils.getTokenDetailFromToken(token);
	}

	public static void main(String[] args) throws Exception {
		TokenDetail tokenDetail = new TokenDetail(100L, TokenDetail.Scope.Account, null);
		System.err.println(TokenUtils.generateToken(tokenDetail, null));
		//wxapp eyJhbGciOiJIUzUxMiJ9.eyJDcmVhdGVUaW1lIjoxNTM2MTI3ODk5NDU1LCJTZXNzaW9uS2V5IjpudWxsLCJWZXJpZnlJZCI6MSwiVmVyaWZ5U2NvcGUiOiJXZWl4aW5Vc2VyIn0.lZpfyJEkx9-uOrS64eBsb-qlHH-_1VQcY5XZm3ahM6LDGyvz79NOtSqyNYTjBKNpiH5KgpN3oOxJDtj3fq97pA

	}
}
