/*
 * 文 件 名:  UserService.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年5月23日
 */
package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

/**
 * 使用JdbcTemplate操作数据库
 * Spring的JdbcTemplate是自动配置的，你可以直接使用@Autowired来注入到你自己的bean中来使用。
 * 
 * jdbcTemplate的使用
 * 
 * @author   sun
 * @version  [版本号, 2018年5月23日]
 */
@Service
public class UserService
{
    //Spring的JdbcTemplate是自动配置的，可以直接使用@Autowired来注入到你自己的bean中来使用。
    @Autowired
    private JdbcTemplate jdbcTemplate;
    
    public void create(String name, Integer age)
    {
        jdbcTemplate.update("insert into USER(NAME, AGE) values(?, ?)", name, age);
    }
    
    public void deleteByName(String name)
    {
        jdbcTemplate.update("delete from USER where NAME = ?", name);
    }
    
    public Integer getAllUsers()
    {
        return jdbcTemplate.queryForObject("select count(1) from USER", Integer.class);
    }
    
    public void deleteAllUsers()
    {
        jdbcTemplate.update("delete from USER");
    }
}
