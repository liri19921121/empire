package com.tom.lemenintl.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Data
@AllArgsConstructor
public class T2204 {
       Long id;
       String code;
       Long userId;
       String userName;
       String userLevel;
       Long expertId;
       String expertName;
       LocalDateTime submitTime;
       LocalDate scheduledDateStart;
       LocalDate scheduledDateEnd;
       String status;
}
