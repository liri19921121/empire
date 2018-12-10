/*
 * 文 件 名:  RedisController.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年5月31日
 */
package com.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年5月31日]
 */
@RestController
public class RedisController
{
    
    @Autowired
    private RedisTemplate<String, String> redisTemplate;
    
    @RequestMapping("/redis")
    public String redis()
    {
        //redis里面设置值
        redisTemplate.opsForValue().set("test", "hello redis");
        //从redis里面拿值
        return redisTemplate.opsForValue().get("test");
        
    }
    
}
