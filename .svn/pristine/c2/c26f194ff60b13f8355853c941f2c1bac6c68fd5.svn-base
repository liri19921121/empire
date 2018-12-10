package com.tom.lemenintl.common.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDateTime;

@Entity
@Data
public class SysDictionary {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	 Long id;

	 String type;
	
	 String value;
	 String display;
	
	 Integer orderNum;

	 Boolean enable=Boolean.TRUE;

	 String updator;
	 LocalDateTime updateTime = LocalDateTime.now();
	 String creator;
	 LocalDateTime createTime = LocalDateTime.now();
}
