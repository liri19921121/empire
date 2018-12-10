package com.tom.lemenintl.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDateTime;

@Entity
@Data
public class TransFreeConsult {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;

	String code;// 编号

	Long userId;// 用户id

	LocalDateTime consultTime = LocalDateTime.now();// 咨询时间

	String content;// 咨询内容

	Long lastReplierAccountId;// 最后回复人员

	Boolean unread;// 未读标示
	String status = "1";// 状态 1:未回复、2:已回复、3:已关闭

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
