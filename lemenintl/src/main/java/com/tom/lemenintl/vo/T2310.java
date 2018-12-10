package com.tom.lemenintl.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@AllArgsConstructor
public class T2310 {

	Long id;
	String code;
	Long userId;
	String userName;
	String userMobile;
	Long hospitalId;
	String hospitalName;
	LocalDateTime applyTime;
	String status;
	Long handlerAccountId;
	String handlerAccountName;
	LocalDateTime handleTime;

}
