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
public class TransUserDataBloodSugar {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;

	Long userId;

	Float glycemicIndex;// 血糖指数

	Boolean isEmptyStomach;// 是否空腹

	LocalDate recordDate = LocalDate.now();
	
	String updator;
	LocalDateTime updateTime = LocalDateTime.now();
	String creator;
	LocalDateTime createTime = LocalDateTime.now();
}
