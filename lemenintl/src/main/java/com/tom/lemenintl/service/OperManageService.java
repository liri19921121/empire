package com.tom.lemenintl.service;

import com.tom.lemenintl.common.RestHttpReply;
import com.tom.lemenintl.common.entity.SysAccount;
import com.tom.lemenintl.common.entity.SysRoleResource;
import com.tom.lemenintl.common.exception.CustomerException;
import com.tom.lemenintl.common.repo.SysAccountRepo;
import com.tom.lemenintl.common.repo.SysRoleResRepo;
import com.tom.lemenintl.common.utils.CommonUtils;
import com.tom.lemenintl.entity.TransUserMoodAdvice;
import com.tom.lemenintl.repo.TransUserMoodAdviceRepo;
import com.tom.lemenintl.utils.RecordCodeUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;


/**
 * 权限修改类服务
 * @author sun
 *
 */
@Service
public class OperManageService {
	@Autowired
	SysRoleResRepo SysRoleResRepo;
	@Autowired
	SysAccountRepo SysAccountRepo;
	
	@Autowired
	TransUserMoodAdviceRepo transUserMoodAdviceRepo;
	
	@Transactional
	public void T2704(Long roleId, List<Long> resourceIdList) {
		SysRoleResRepo.deleteByRoleId(roleId);
		for(Long resourceId : resourceIdList){
			SysRoleResource sysRoleResource = new SysRoleResource();
			sysRoleResource.setResourceId(resourceId);
			sysRoleResource.setRoleId(roleId);
			SysRoleResRepo.save(sysRoleResource);
		}
	}

	
	@Transactional
	public RestHttpReply T2706(Long userId,String realName,String userName,String passWord,Long roleId,Boolean enable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			if(userId == null){
			List<SysAccount> list =	SysAccountRepo.findByUsername(userName);
			if(!list.isEmpty()){
				throw new CustomerException("用户已存在");
			}
			SysAccount sysAccount = new SysAccount();
			sysAccount.setUsername(userName);
			sysAccount.setPassword(passWord);
			sysAccount.setRoleId(roleId);
			sysAccount.setName(realName);
			if(enable.equals("")||enable==null){
				sysAccount.setEnable(false);
			}
			sysAccount.setLastLoginTime(LocalDateTime.now());
			SysAccountRepo.save(sysAccount);
			}else{
				Optional<SysAccount> sysAccount = SysAccountRepo.findById(userId);
				sysAccount.get().setUsername(userName);
				sysAccount.get().setPassword(passWord);
				sysAccount.get().setRoleId(roleId);
				sysAccount.get().setName(realName);
				if(enable.equals("")||enable==null){
					sysAccount.get().setEnable(false);
				}
				sysAccount.get().setLastLoginTime(LocalDateTime.now());
				SysAccountRepo.save(sysAccount.get());
			}
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	@Transactional
	public void T2709(Long id,String adviceType,String content,Boolean enable,Long creatorAccountId) {
		TransUserMoodAdvice transUserMoodAdvice;
		if (id == null)
			transUserMoodAdvice = new TransUserMoodAdvice();
		else
			transUserMoodAdvice = transUserMoodAdviceRepo.findById(id).get();
		
		transUserMoodAdvice.setAdviceType(adviceType);
		transUserMoodAdvice.setContent(content);
		transUserMoodAdvice.setEnable(enable);
		transUserMoodAdvice.setUpdateTime(LocalDateTime.now());
		transUserMoodAdvice.setCreatorAccountId(creatorAccountId);

		TransUserMoodAdvice saveTransUserMoodAdvice = transUserMoodAdviceRepo.save(transUserMoodAdvice);

		if (id == null) {
			RecordCodeUtils.genCode(saveTransUserMoodAdvice);
			transUserMoodAdviceRepo.save(saveTransUserMoodAdvice);
		}
	}
}
