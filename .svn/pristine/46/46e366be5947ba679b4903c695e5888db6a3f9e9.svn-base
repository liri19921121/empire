package com.tom.lemenintl.entity;

import lombok.Data;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Data
public class TransFreeConsultItem {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	Long freeConsultId;// 父id

	Long userId;// 用户id
	@Transient
	String userName;//

	Long replierAccountId;// 回复人员id
	@Transient
	String replierAccountName;//
	
	String content;// 内容

	String updator;
	LocalDateTime updateTime = LocalDateTime.now();
	String creator;
	LocalDateTime createTime = LocalDateTime.now();
}
