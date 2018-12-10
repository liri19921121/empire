package com.tom.lemenintl.entity;

import lombok.Data;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Data
public class TransHealthArticle {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;

	String articleType;// 资讯类型 1:资讯、2:知识

	String code;// 编号
	String title;// 标题
	String contentHtml;// 内容

	Long coverFileId;

	Integer orderNum;// 序号

	Integer readCount = 0;// 阅读量
	Integer shearCount = 0;// 转发量

	Boolean enable = Boolean.TRUE;// 是否可用

	Long creatorAccountId;

	@Transient
	Long creatorAccountName;

	LocalDateTime createTime = LocalDateTime.now();

	String updator;
	LocalDateTime updateTime = LocalDateTime.now();
}
