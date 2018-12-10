package com.tom.lemenintl.common.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
@Data
public class SysWeixinUser {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;

	// 微信用户信息
	String openId;
	String nickName;// 户昵称
	String avatarUrl;// 用户头像
	String gender;// 用户的性别，值为1时是男性，值为2时是女性，值为0时是未知
	String city;
	String province;
	String country;
	String language;
	String unionId;
	String groupId;
	String remark;

	// 自定义用户信息
	String code;// 序号

	String userName;// 姓名
	String userLevel; // 用户级别 1：普通、2:VIP
	LocalDateTime registeTime;// 注册时间,当填写资料完成以后升级成为普通用户，并填写注册时间

	Integer loginCount = 1;// 登陆次数

	String email;// 电子邮箱
	String mobile;// 手机

	String identity;// 身份证号
	String sex;// 性别 1:男、2:女
	LocalDate birthDate;// 出生年月： 1983-11

	Float height;// 身高： 175cm
	Float weight;// 体重： 70kg
	Integer targetStep = 10000;
	LocalDateTime lastLoginTime = LocalDateTime.now(); // 最后登录时间

	LocalDateTime lastAdviceTime = LocalDateTime.now(); // 最后建议时间

	String updator;
	LocalDateTime updateTime = LocalDateTime.now();
	String creator;
	LocalDateTime createTime = LocalDateTime.now();
}
