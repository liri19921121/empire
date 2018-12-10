package com.tom.lemenintl.common.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDateTime;

@Entity
@Data
public class SysRole {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;

	String roleName;// 角色名
	Boolean enable = Boolean.TRUE;// 是否可用
	
	String updator;
	LocalDateTime updateTime = LocalDateTime.now();
	String creator;
	LocalDateTime createTime = LocalDateTime.now();

}
