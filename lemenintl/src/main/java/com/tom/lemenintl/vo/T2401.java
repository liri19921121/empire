package com.tom.lemenintl.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@AllArgsConstructor
public class T2401 {

	Long id;
	String articleType;
	String code;
	String title;
	Integer orderNum;
	Boolean enable;
	LocalDateTime createTime;
	String creatorName;
	Integer readCount;
	Integer shearCount;

}
