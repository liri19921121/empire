package com.tom.lemenintl.common.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDateTime;

@Entity
@Data
public class LogEvent {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;

	String eventType;// 事件类型

	Long userId;// 用户id
	Long accountId;// 用户id

	String eventMethod;// 方法名称
	String eventStatus;//

	String remark;

	Long timeConsume;// 耗时

	String updator;
	LocalDateTime updateTime = LocalDateTime.now();
	String creator;
	LocalDateTime createTime = LocalDateTime.now();

}
