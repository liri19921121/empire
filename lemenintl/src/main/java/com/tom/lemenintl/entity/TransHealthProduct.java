package com.tom.lemenintl.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity
@Data
public class TransHealthProduct {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;

	String code;// 编号
	String name;// 名称
	Integer orderNum;// 序号

	String contentHtml;// 内容

	Long coverFileId;// 图片

	String special;// 特色

	String recommend;// 推荐人群

	BigDecimal originalPrice; // 原价
	BigDecimal discountPrice;// 优惠价

	Integer readCount = 0;// 阅读量
	Integer shearCount = 0;// 转发量

	Integer applyCount = 0;// 报名数
	Integer confirmCount = 0;// 回访

	Boolean enable = Boolean.TRUE;// 是否可用
	Long creatorAccountId;

	String creator;
	LocalDateTime createTime = LocalDateTime.now();

	String updator;
	LocalDateTime updateTime = LocalDateTime.now();
}
