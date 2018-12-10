package com.tom.lemenintl.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Data
@AllArgsConstructor
public class T1415 {
	Long id;
	Long expertId;
	String expertName;
	String question1;
	String question2;
	String question3;
	String question4;
	String question5;
	LocalDate scheduledDateStart;
	LocalDate scheduledDateEnd;
	String content;
	LocalDateTime comfirmTime;
	Long attachmentFile1;
	Long attachmentFile2;
	Long attachmentFile3;
	Long attachmentFile4;
	Long attachmentFile5;
	String status;
}
