package com.tom.lemenintl.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDateTime;

@Entity
@Data
public class TransDisplayContent {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;

	String vipShowHtml;//莱蒙VIP介绍
	
	Long zhukangtangCoverFileId;//竹康堂图片
	
	String zhukangtangShowHtml;//竹康堂介绍

	String creator;
	LocalDateTime createTime = LocalDateTime.now();

	String updator;
	LocalDateTime updateTime = LocalDateTime.now();
}
