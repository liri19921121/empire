/*
 * 文 件 名:  ErrorInfo.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年6月1日
 */
package com.domain;

/**
 * 接受统一返回错误信息类
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年6月1日]
 */
public class ErrorInfo<T>
{
    public static final Integer OK = 0;
    
    public static final Integer ERROR = 100;
    
    private Integer code;
    
    private String message;
    
    private String url;
    
    private T data;
    
    /**
     * @return 返回 code
     */
    public Integer getCode()
    {
        return code;
    }
    
    /**
     * @param 对code进行赋值
     */
    public void setCode(Integer code)
    {
        this.code = code;
    }
    
    /**
     * @return 返回 message
     */
    public String getMessage()
    {
        return message;
    }
    
    /**
     * @param 对message进行赋值
     */
    public void setMessage(String message)
    {
        this.message = message;
    }
    
    /**
     * @return 返回 url
     */
    public String getUrl()
    {
        return url;
    }
    
    /**
     * @param 对url进行赋值
     */
    public void setUrl(String url)
    {
        this.url = url;
    }
    
    /**
     * @return 返回 data
     */
    public T getData()
    {
        return data;
    }
    
    /**
     * @param 对data进行赋值
     */
    public void setData(T data)
    {
        this.data = data;
    }
    
}
