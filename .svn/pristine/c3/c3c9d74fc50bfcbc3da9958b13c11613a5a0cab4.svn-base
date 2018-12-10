package com.tom.lemenintl.common.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDateTime;

@Entity
@Data
public class SysAccount {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;

	String username;// 用户名
	String password;// 密码

	String name;// 姓名
	
	String accountType;// 账户类型
	
	Long roleId;//角色id
	
	Integer avatarId;// 用户头像

	Boolean enable=Boolean.TRUE;// 是否可用

	LocalDateTime lastLoginTime = LocalDateTime.now();//上次登陆时间

	LocalDateTime lastPasswordChangeTime;//密码更新时间

	String updator;
	LocalDateTime updateTime = LocalDateTime.now();
	String creator;
	LocalDateTime createTime = LocalDateTime.now();

}
