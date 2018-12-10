/*
 * 文 件 名:  CheckLoginInterceptor.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:  Administrator
 * 修改时间:  2017年11月2日
 */
package com.research.customerAnnotation.copy;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/**
 * 分别实现预处理、后处理（调用了Service并返回ModelAndView，但未进行页面渲染）、返回处理（已经渲染了页面）
 * 在preHandle中，可以进行编码、安全控制等处理；
 * 在postHandle中，有机会修改ModelAndView；
 * 在afterCompletion中，可以根据ex是否为null判断是否发生了异常，进行日志记录。
 * 参数中的Object handler是下一个拦截器。
 * 
 * @author  sun
 * @version  [版本号, 2017年11月2日]
 */
public class CheckLoginInterceptor extends HandlerInterceptorAdapter
{
    
    /** 
     * 如果返回false 从当前拦截器往回执行所有拦截器的afterCompletion方法，再退回拦截器链 如果返回true 
     * 执行下一个拦截器，直到所有拦截器都执行完毕 再运行被拦截的Controller 
     * 然后进入拦截器链从最后一个拦截器往回运行所有拦截器的postHandle方法 
     * 接着依旧是从最后一个拦截器往回执行所有拦截器的afterCompletion方法 
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
        throws Exception
    {
        System.out.println("这里是preHandle方法");
        Boolean bool = false;
        //配和自定义注解使用
        Class<?> clazz = handler.getClass();
        CheckLogin checkLogin = clazz.getAnnotation(CheckLogin.class);
        if (checkLogin != null)
        {
            String val = checkLogin.value();
            // 判断前台登录
            if (val.equals(checkLogin.WEB))
            {
                Object obj = request.getSession().getAttribute("login");
                if (obj == null)
                {
                    String basePath = request.getScheme() + "://" + request.getServerName() + ":"
                        + request.getServerPort() + request.getContextPath() + "/";
                    //跳转到登录页面
                    response.sendRedirect(basePath + "index/gotopage");
                }
                else
                {
                    bool = true;
                }
            }
        }
        else
        {
            return true;
        }
        return bool;
    }
    
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
        throws Exception
    {
        System.out.println("这里是afterCompletion方法");
        super.afterCompletion(request, response, handler, ex);
    }
    
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
        ModelAndView modelAndView)
            throws Exception
    {
        System.out.println("这里是postHandle方法");
        super.postHandle(request, response, handler, modelAndView);
    }
    
}
