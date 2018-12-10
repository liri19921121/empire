package com.tom.lemenintl.controller.pc;

import com.tom.lemenintl.common.RestHttpReply;
import com.tom.lemenintl.common.entity.SysAccount;
import com.tom.lemenintl.common.entity.SysResource;
import com.tom.lemenintl.common.entity.SysRole;
import com.tom.lemenintl.common.exception.CustomerException;
import com.tom.lemenintl.common.repo.SysAccountRepo;
import com.tom.lemenintl.common.repo.SysResourceRepo;
import com.tom.lemenintl.common.repo.SysRoleRepo;
import com.tom.lemenintl.common.repo.SysRoleResRepo;
import com.tom.lemenintl.common.service.AuthService;
import com.tom.lemenintl.common.utils.CommonUtils;
import com.tom.lemenintl.entity.TransUserMoodAdvice;
import com.tom.lemenintl.repo.TransUserMoodAdviceRepo;
import com.tom.lemenintl.service.OperManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;
import java.util.List;

@RestController
public class OperManageCtl {
	
	@Autowired
	TransUserMoodAdviceRepo transUserMoodAdviceRepo;
	
	@Autowired
	OperManageService operManageService;
	 
	@RequestMapping("/T2701")
	public RestHttpReply T2701(@RequestParam String roleName) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			List<SysRole> list = SysRoleRepo.findByRoleName(roleName);
			if(!list.isEmpty()){
				throw new CustomerException("角色已存在");
			}
			SysRole sysRole = new SysRole();
			sysRole.setRoleName(roleName);
			SysRoleRepo.save(sysRole);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@Autowired
	SysRoleRepo SysRoleRepo;
	
	@RequestMapping("/T2702")
	public RestHttpReply T2702(String name, Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list.content", SysRoleRepo.findAll(pageable));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@Autowired
	SysResourceRepo SysResourceRepo;
	
	@RequestMapping("/T2703")
	public RestHttpReply T2703() throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			List<SysResource> menuList = SysResourceRepo.findBySuperResourceId(null);
			perTreeIte(menuList);
            reply.putData("list.content", menuList);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	public void perTreeIte(List<SysResource> list){
		for(SysResource s: list){
			  List<SysResource> listChildren = SysResourceRepo.findBySuperResourceId(s.getId());
		      s.setSubList(listChildren);
		      perTreeIte(listChildren);
		  }
	}
	
	@Autowired
	OperManageService OperManageService;
	
	@RequestMapping("/T2704")
	public RestHttpReply T2704(@RequestParam Long roleId, @RequestParam List<Long> resourceIdList)
			throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			OperManageService.T2704(roleId, resourceIdList);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@Autowired
	SysRoleResRepo SysRoleResRepo;
	
	@RequestMapping("/T2705")
	public RestHttpReply T2705(@RequestParam Long roleId) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			List<Long> resourceIdList = SysRoleResRepo.T2705(roleId);
			reply.putData("list", resourceIdList);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@RequestMapping("/T2706")
	public RestHttpReply T2706(@RequestParam Long userId,@RequestParam String realName,@RequestParam String userName,@RequestParam String passWord,@RequestParam Long roleId,@RequestParam Boolean enable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply = OperManageService.T2706(userId, realName, userName, passWord, roleId, enable);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@Autowired
	SysAccountRepo SysAccountRepo;
	
	@RequestMapping("/T2707")
	public RestHttpReply T2707(@RequestParam String userName,Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			if(userName == null||userName.equals("")){
				reply.putData("list.content", SysAccountRepo.T2707(pageable));
			}else{
				reply.putData("list.content", SysAccountRepo.T2707(userName));
			}
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	
	
	
	@RequestMapping("/listAccount")
	public RestHttpReply listAccount(String name, Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			// ----------------------------------------------------------------------------------------------------------------------//
			reply.putData("list", CommonUtils.mockListWithPage(SysAccount.class));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/findAccountById")
	public RestHttpReply findAccountById(@RequestParam Long id) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			// ----------------------------------------------------------------------------------------------------------------------//
			reply.putData("entity", CommonUtils.mockEntity(SysAccount.class));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/saveAccount")
	public RestHttpReply saveAccount(@RequestParam String entity) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			// ----------------------------------------------------------------------------------------------------------------------//
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}


	@RequestMapping("/findRoleById")
	public RestHttpReply findRoleById(@RequestParam Long id) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			// ----------------------------------------------------------------------------------------------------------------------//
			reply.putData("entity", CommonUtils.mockEntity(SysRole.class));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}




	

	@RequestMapping("/listMoodAdvice")
	public RestHttpReply listMoodAdvice(String type, Boolean enable,
			@RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime createTimeStart,
			@RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime createTimeEnd,
			Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			// ----------------------------------------------------------------------------------------------------------------------//
			reply.putData("list", CommonUtils.mockListWithPage(TransUserMoodAdvice.class));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

	@RequestMapping("/T2710")
	public RestHttpReply T2710(@RequestParam Long id) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("entity", transUserMoodAdviceRepo.findById(id).get());
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@Autowired
	AuthService AuthService;
	
	@RequestMapping("/T2709")
	public RestHttpReply T2709(Long id,@RequestParam String adviceType,@RequestParam String content,@RequestParam Boolean enable,@RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long creatorAccountId = AuthService.getTokenDetail(token).getVerifyId();
			operManageService.T2709(id,adviceType,content,enable,creatorAccountId);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@RequestMapping("/T2708")
	public RestHttpReply T2708(
			@RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime createTimeStart,
			@RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") LocalDateTime createTimeEnd,
			Boolean enable,String adviceType, Pageable pageable) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			reply.putData("list", transUserMoodAdviceRepo.T2708(createTimeStart, createTimeEnd, enable, adviceType,pageable));
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}

}
