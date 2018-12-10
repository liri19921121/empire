package com.tom.lemenintl.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class T2301 {

	Long id;
	String code;
	String name;
	Integer orderNum;
	String nationName;
	String special;
	Boolean enable;
	Long applyCount;
	Long replyCount;
}
