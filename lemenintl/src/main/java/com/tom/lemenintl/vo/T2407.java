package com.tom.lemenintl.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@AllArgsConstructor
public class T2407 {
       Long id;
       LocalDateTime applyTime;
       Long healthProductId;
       String healthName;
       Long userId;
       String userName;
       String userMobile;
       String status;
       String productApplyReason;
}
