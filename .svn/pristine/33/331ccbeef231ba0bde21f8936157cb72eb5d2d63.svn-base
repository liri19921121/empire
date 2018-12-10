/*
 * 文 件 名:  GlobalExceptionHandler.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年6月1日
 */
package com.common;

import com.domain.ErrorInfo;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * 统一异常处理
 * 
 * 
 * 通过使用@ControllerAdvice定义统一的异常处理类，而不是在每个Controller中逐个定义。
 * @ExceptionHandler用来定义函数针对的异常类型，最后将Exception对象和请求URL映射到error.html中
 * 
 * 
 * 我们只需要在Controller中抛出Exception，当然我们可能会有多种不同的Exception。
 * 然后在@ControllerAdvice类中，根据抛出的具体Exception类型匹配@ExceptionHandler中配置的异常类型来匹配错误映射和处理。
 * 
 * @author   sun
 * @version  [版本号, 2018年6月1日]
 */
@ControllerAdvice
public class GlobalExceptionHandler
{
    @ExceptionHandler(value = Exception.class)
    public ModelAndView defaultErrorHandler(HttpServletRequest req, Exception e)
        throws Exception
    {
        ModelAndView mav = new ModelAndView();
        mav.addObject("exception", e);
        mav.addObject("url", req.getRequestURL());
        mav.setViewName("error");
        return mav;
    }
    
    //当我们要实现RESTful API时，返回的错误是JSON格式的数据，而不是HTML页面，这时候我们也能支持。
    @ExceptionHandler(value = MyException.class)
    @ResponseBody
    public ErrorInfo<String> jsonErrorHandler(HttpServletRequest req, MyException e)
        throws Exception
    {
        ErrorInfo<String> r = new ErrorInfo<>();
        r.setMessage(e.getMessage());
        r.setCode(ErrorInfo.ERROR);
        r.setData("json格式的错误信息");
        r.setUrl(req.getRequestURL().toString());
        return r;
    }
}
