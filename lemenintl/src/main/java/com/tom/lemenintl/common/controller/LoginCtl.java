package com.tom.lemenintl.common.controller;

import com.tom.lemenintl.common.RestHttpReply;
import com.tom.lemenintl.common.entity.SysResource;
import com.tom.lemenintl.common.repo.SysAccountRepo;
import com.tom.lemenintl.common.repo.SysResourceRepo;
import com.tom.lemenintl.common.service.AuthService;
import com.tom.lemenintl.common.utils.CommonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class LoginCtl {

	@Autowired
	AuthService AuthService;

	@Autowired
	SysAccountRepo SysAccountRepo;

	@RequestMapping("/P001")
	public RestHttpReply P001(@RequestParam String username, @RequestParam String password) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			
			String token = AuthService.login(username, password);
			reply.putData("token", token);
			reply.putData("entity", SysAccountRepo.P001(AuthService.getTokenDetail(token).getVerifyId()));

		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		return reply;
	}
	
	@Autowired
	SysResourceRepo SysResourceRepo;
	
	@RequestMapping("/P002")
	public RestHttpReply P002(@RequestHeader String token) throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			Long replierAccountId = AuthService.getTokenDetail(token).getVerifyId();
			Long roleId = SysAccountRepo.findById(replierAccountId).get().getRoleId();
			List<SysResource> menuList = SysResourceRepo.P002(roleId);
			perTreeIte(menuList);
            reply.putData("list", menuList);
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
}
