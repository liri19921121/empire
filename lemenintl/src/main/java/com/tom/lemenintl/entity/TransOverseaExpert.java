package com.tom.lemenintl.entity;

import lombok.Data;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Data
public class TransOverseaExpert {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	String overseaExpertType;// 专家类别，1:咨询类专家、2:视频类专家

	String code;// 编号
	String name;// 专家名字
	Integer orderNum;// 序号

	String nationCode;// 国家
	@Transient
	String nationName;// 国家

	Long hospitalId;// 医院
	@Transient
	String hospitalName;// 国家

	String specialSkill;// 专长
	
	String description;// 简介

	Boolean enable = Boolean.TRUE;// 是否可用

	Long headImgFileId;// 头像

	String updator;
	LocalDateTime updateTime = LocalDateTime.now();
	String creator;
	LocalDateTime createTime = LocalDateTime.now();
}
