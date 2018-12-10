package com.tom.lemenintl.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDateTime;

@Entity
@Data
public class TransVipRealtimeChat {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;

	Long vipUserId;// 所属vip用户
	
	Long userId;// 发言人,为null则replierAccountId不为null

	Long replierAccountId;// 回复人员id，医生id
	
	String messageType;//消息类型  1:文本、2:图片
	String content;// 消息
	Long fileId;// 文件


	String creator;
	LocalDateTime createTime = LocalDateTime.now();

	String updator;
	LocalDateTime updateTime = LocalDateTime.now();
}
