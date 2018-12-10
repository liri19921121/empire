package com.tom.lemenintl.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDateTime;

@Entity
@Data
public class TransUserMoodAdvice {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	
	String code;// 编号
	
	String title;// 标题
	
	String adviceType;// 1：心情好、2:心情一般、3：心情差

	String content;// 内容

	Boolean enable = Boolean.TRUE;
	Long creatorAccountId; 
	
	String updator;
	LocalDateTime updateTime = LocalDateTime.now();
	String creator;
	LocalDateTime createTime = LocalDateTime.now();
}
