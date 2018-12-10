package com.tom.lemenintl.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@AllArgsConstructor
public class T2506 {
	   Long id;
	   String code;
	   Long userId;
	   String userName;
	   String userMobile;
	   Long vipProductId;
	   String vipProductName;
	   LocalDateTime applyTime;
	   String status;
	   Long handlerAccountId;
	   String handlerAccountName;
	   LocalDateTime handleTime;
	   LocalDateTime createTime;
}
