package com.tom.lemenintl.common.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDateTime;

@Entity
@Data
public class LogSms {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;

	String msgType;// 短信类型 :1、验证手机号码短信
	String status = "1";// 发送状态 1：已发送、2：发送成功、3:发送失败
	Long userId;// 用户id
	String mobile;// 手机号码

	String content;// 内容

	String key;// 关键信息

	LocalDateTime sendTime = LocalDateTime.now();// 发送时间

	String updator;
	LocalDateTime updateTime = LocalDateTime.now();
	String creator;
	LocalDateTime createTime = LocalDateTime.now();

}
