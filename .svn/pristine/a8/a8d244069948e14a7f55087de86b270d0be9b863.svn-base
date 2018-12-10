package com.tom.lemenintl.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDateTime;

@Entity
@Data
public class TransOverseaHospital {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;

	String code;// 编号
	String name;// 名字
	Integer orderNum;// 序号

	String nation;// 国家

	String special;// 特色

	Boolean enable = Boolean.TRUE;// 是否可用

	Long coverFileId;// 头像

	String description;// 介绍

	String updator;
	LocalDateTime updateTime = LocalDateTime.now();
	String creator;
	LocalDateTime createTime = LocalDateTime.now();
}
