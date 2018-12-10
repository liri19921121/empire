/*
 * 文 件 名:  UserRepository.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年5月23日
 */
package com.service;

import com.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * 该接口继承自JpaRepository，通过查看JpaRepository接口的API文档，
 * 可以看到该接口本身已经实现了创建（save）、更新（save）、删除（delete）、
 * 查询（findAll、findOne）等基本操作的函数，因此对于这些基础操作的数据访问就不需要开发者再自己定义。
 * 
 * Spring-data-jpad的使用
 * 
 * @author   sun
 * @version  [版本号, 2018年5月23日]
 */
public interface UserRepository extends JpaRepository<User, Long>
{
    
    User findByName(String name);
    
    User findByNameAndAge(String name, Integer age);
    
    @Query("from User u where u.name=:name")
    User findUser(@Param("name") String name);
    
}
