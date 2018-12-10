/*
 * 文 件 名:  ErrorController.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年6月1日
 */
package com.web;

import com.common.MyException;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年6月1日]
 */
@RestController
public class ErrorController
{
    @RequestMapping("/json")
    public String json()
        throws MyException
    {
        throw new MyException("返回json格式的异常测试");
    }
    
    @RequestMapping("/hello")
    public String hello()
        throws Exception
    {
        throw new Exception("统一异常处理测试");
    }
}
