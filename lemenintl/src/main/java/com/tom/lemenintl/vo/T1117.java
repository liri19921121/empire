package com.tom.lemenintl.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Data
@AllArgsConstructor
public class T1117 {
	String avatarUrl;
	Long id;
	Long userId;
	String userName;
	String gender;
	LocalDate birthDate;
	LocalDateTime lastTime;
	String age;
}
