package com.tom.lemenintl.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDateTime;

@Entity
@Data
public class TransVipProduct {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;

	String code;// 编号
	String name;// 名称
	Integer orderNum;// 序号
	
	String vipProductType ;//1:vip、2:all

	String servicePeriod ;//服务时长
	
	String  applyTimeStart1;//预约时段1
	String  applyTimeEnd1;//预约时段1
	
	String  applyTimeStart2;//预约时段2
	String  applyTimeEnd2;//预约时段2
	
	
	Integer maxCount;//最大人数
	
	Boolean enable;// 是否可用

	Long creatorAccountId;
	
	String creator;
	LocalDateTime createTime = LocalDateTime.now();

	String updator;
	LocalDateTime updateTime = LocalDateTime.now();
}
