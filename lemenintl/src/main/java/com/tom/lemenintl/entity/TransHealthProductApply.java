package com.tom.lemenintl.entity;

import lombok.Data;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Data
public class TransHealthProductApply {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;

	LocalDateTime applyTime = LocalDateTime.now();// 报名时间

	Long healthProductId;
	
	Long userId;// 用户id
	@Transient
	String userName;//
	@Transient
	String userMobile;//

	String status = "1";// 1:未回访、2:已回访,3已取消

	String productApplyReason;// 回访意见

	String creator;
	LocalDateTime createTime = LocalDateTime.now();

	String updator;
	LocalDateTime updateTime = LocalDateTime.now();
}
