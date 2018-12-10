package com.tom.lemenintl.common.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDateTime;

@Entity
@Data
public class SysRoleResource {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	
	Long resourceId;
	Long roleId;

	String updator;
	LocalDateTime updateTime = LocalDateTime.now();
	String creator;
	LocalDateTime createTime = LocalDateTime.now();

}
