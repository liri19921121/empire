package com.tom.lemenintl.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDateTime;

@Entity
@Data
public class TransDevice {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;

	Long userId;// 所属用户id

	String deviceType;//设备类型 1：血压计、2:血糖仪、3:体脂秤、4:运动手环
	
	String deviceName;//设备名称
	
	String deviceAttr1;//设备属性
	String deviceAttr2;//设备属性
	String deviceAttr3;//设备属性
	String deviceAttr4;//设备属性
	String deviceAttr5;//设备属性


	String creator;
	LocalDateTime createTime = LocalDateTime.now();

	String updator;
	LocalDateTime updateTime = LocalDateTime.now();
}
