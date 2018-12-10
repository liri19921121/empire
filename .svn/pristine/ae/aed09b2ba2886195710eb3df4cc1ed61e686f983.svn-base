package com.tom.lemenintl.entity;

import lombok.Data;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Data
public class TransVipProductApply {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;

	String code;// 序号
	Long userId;// 用户id
	@Transient
	String userName;
	@Transient
	String userMobile;

	Long vipProductId;
	@Transient
	String vipProductName;

	LocalDateTime applyTime;// 报名时间
	String status = "1";// 状态 1:已提交、2:已确认、3:已取消、4:已完成

	Long handlerAccountId;// 处理人
	@Transient
	String handlerAccountName;
	
	LocalDateTime handleTime;// 处理时间

	String updator;
	LocalDateTime updateTime = LocalDateTime.now();

	String creator;
	LocalDateTime createTime = LocalDateTime.now();

}
