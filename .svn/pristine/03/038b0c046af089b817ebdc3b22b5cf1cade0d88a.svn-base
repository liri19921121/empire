package com.tom.lemenintl.entity;

import lombok.Data;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
@Data
public class TransOverseaVideochat {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;

	String code;// 编号

	Long userId;// 用户id
	@Transient
	String userName;// 前端显示用
	@Transient
	String userLevel;// 前端显示用

	// 预约满规则，默认只能:10人
	String scheduledPeriod;// 预约周期 1:本周、2:下周、3:下下周

	LocalDate scheduledDateStart;// 预约时间起始
	LocalDate scheduledDateEnd;// 预约时间结束

	LocalDateTime submitTime = LocalDateTime.now();// 提交时间

	Long overseaExpertId;// 咨询专家
	@Transient
	String overseaExpertName;// 咨询专家

	String content;// 咨询内容

	String question1;// 咨询问题
	String question2;// 咨询问题
	String question3;// 咨询问题
	String question4;// 咨询问题
	String question5;// 咨询问题

	Long attachmentFile1;
	Long attachmentFile2;
	Long attachmentFile3;
	Long attachmentFile4;
	Long attachmentFile5;

	Long lastReplierId;// 最后回复人员

	String status = "1";// 状态 1:已提交、2:已审核、3:已确认、4:已取消、5:已完成

	String rejectReson;// 审核取消原因

	String comfirmReson;// 审核确认信息
	
	LocalDateTime comfirmTime ;// 确认专家视频时间
	
	Boolean unread;

	String updator;
	LocalDateTime updateTime = LocalDateTime.now();
	String creator;
	LocalDateTime createTime = LocalDateTime.now();
}
