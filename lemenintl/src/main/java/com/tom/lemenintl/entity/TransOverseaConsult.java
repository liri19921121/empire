package com.tom.lemenintl.entity;

import lombok.Data;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Data
public class TransOverseaConsult {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;

	String code;// 编号

	Long userId;// 用户id
	@Transient
	String userName;// 前端显示用
	@Transient
	String userLevel;// 前端显示用

	LocalDateTime consultTime = LocalDateTime.now();// 咨询时间

	Long overseaExpertId;// 咨询专家
	@Transient
	String overseaExpertName;// 前端显示用

	String content;// 咨询内容

	Long lastReplierAccountId;// 最后回复人员

	String status="1";// 状态 1:未回复、2:已回复、3:已关闭、4:已转问

	Boolean unread;// 未读标示
	
	Long attachmentFile1;
	Long attachmentFile2;
	Long attachmentFile3;
	Long attachmentFile4;
	Long attachmentFile5;

	String updator;
	LocalDateTime updateTime = LocalDateTime.now();
	String creator;
	LocalDateTime createTime = LocalDateTime.now();
}
