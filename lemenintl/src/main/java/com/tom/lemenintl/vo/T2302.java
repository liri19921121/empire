package com.tom.lemenintl.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class T2302 {

	Long id;
	String code;
	String name;
	Integer orderNum;
	String nationCode;
	String nationName;
	String special;
	Boolean enable;
	Long coverFileId;
	String description;

}
