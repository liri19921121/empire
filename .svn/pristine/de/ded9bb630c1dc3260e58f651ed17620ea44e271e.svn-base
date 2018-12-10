package com.tom.lemenintl.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDateTime;

@Entity
@Data
public class TransOverseaReferralApply {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;

	String code;

	Long userId;// 用户id
	Long hospitalId;//

	LocalDateTime applyTime = LocalDateTime.now();// 咨询时间

	String status = "1";// 状态 1:未回复、2:已回复

	Long handlerAccountId;// 处理人id
	LocalDateTime handleTime;// 处理时间

	String updator;
	LocalDateTime updateTime = LocalDateTime.now();
	String creator;
	LocalDateTime createTime = LocalDateTime.now();
}
