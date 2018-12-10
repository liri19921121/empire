package com.tom.lemenintl.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDateTime;

@Entity
@Data
public class TransDisplayBanner {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;

	Integer orderNum;// 序号

	Long imgFileId;// banner 图片文件id

	String targetUrl;// 点击时跳转目标资源

	String bannerType;// 1:日记banner、2:康养banner、3:海外视频专家问诊banner

	Boolean enable = Boolean.TRUE;// 是否可用

	String creator;
	LocalDateTime createTime = LocalDateTime.now();

	String updator;
	LocalDateTime updateTime = LocalDateTime.now();
}
