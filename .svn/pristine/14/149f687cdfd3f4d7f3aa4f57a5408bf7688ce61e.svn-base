/*
 * 文 件 名:  XssFilter.java
 * 版    权:  深圳钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:  suwei
 * 修改时间:  2017年9月1日
 */
package com.research.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * 过滤用户提交的参数，防止XSS攻击
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年2月25日]
 */
public class XssFilter implements Filter
{
    public void init(FilterConfig config)
        throws ServletException
    {
    }
    
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
        throws IOException, ServletException
    {
        HttpServletRequest req = (HttpServletRequest)request;
        /* Adminuser user = (Adminuser)req.getSession().getAttribute(Constant.ADMINLOGIN_SUCCESS);
        if (user != null)
        {
            //如果是后台请求则不需要经过XSS请求过滤
            chain.doFilter(request, response);
        }
        else
        {*/
        //构造一个XSS请求装饰器
        XssHttpServletRequestWrapper xssRequest = new XssHttpServletRequestWrapper((HttpServletRequest)request);
        chain.doFilter(xssRequest, response);
        /* }*/
    }
    
    public void destroy()
    {
    }
}
