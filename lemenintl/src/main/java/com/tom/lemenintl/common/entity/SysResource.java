package com.tom.lemenintl.common.entity;

import lombok.Data;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.List;

@Entity
@Data
public class SysResource {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	Long superResourceId;// 资源父id

	String resourceName;// 资源名称

	String resourceURL;// 资源URL

	Boolean enable = Boolean.TRUE;// 是否可用

	@Transient
	List<SysResource> subList;// 子菜单列表

	String updator;
	LocalDateTime updateTime = LocalDateTime.now();
	String creator;
	LocalDateTime createTime = LocalDateTime.now();

}
