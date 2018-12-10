package com.tom.lemenintl.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
@Data
public class TransUserDataStep {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;

	Long userId;

	Integer count; //步数

	Integer targetStep; //目标步数

	LocalDate recordDate = LocalDate.now(); //步数记录日期

	String updator;
	LocalDateTime updateTime = LocalDateTime.now();
	String creator;
	LocalDateTime createTime = LocalDateTime.now();
}
