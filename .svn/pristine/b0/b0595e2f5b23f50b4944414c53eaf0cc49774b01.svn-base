package com.tom.lemenintl.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDateTime;

@Entity
@Data
public class TransDisease {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;

	String code;// 编号
	String name;// 名字
	Integer orderNum;// 序号

	Boolean enable = Boolean.TRUE;// 是否可用

	String updator;
	LocalDateTime updateTime = LocalDateTime.now();
	String creator;
	LocalDateTime createTime = LocalDateTime.now();
}
