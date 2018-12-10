package com.tom.lemenintl.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@AllArgsConstructor
public class T2601 {
       Long userId;
       String userName;
       String userLevel;
       String mobile;
       LocalDateTime createTime;
       LocalDateTime lastLoginTime;
       LocalDateTime lastAdviceTime;
       Integer loginCount;
       Long activity;
}
