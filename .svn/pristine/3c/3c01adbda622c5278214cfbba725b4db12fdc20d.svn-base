/*
 * 文 件 名:  WeChat_Var.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:  Administrator
 * 修改时间:  2017年11月24日
 */
package com.research.wx.util;

import java.util.Properties;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author  sun
 * @version  [版本号, 2017年11月24日]
 */
public class WeChat_Var
{
    private static Properties props;
    
    static
    {
        props = PropertiesUtil.getReadAbleProperties("/wx/config/wechat.properties");
    }
    
    public static String getProp(String key)
    {
        return props.getProperty(key);
    }
    
    public static void setProp(String key, String value)
    {
        props.setProperty(key, value);
    }
    
    public static String getSignKey()
    {
        return props.getProperty("signKey");
    }
    
    public static String getMchId()
    {
        return props.getProperty("mch_id");
    }
    
    public static String getSignType()
    {
        return props.getProperty("sign_type");
    }
    
    public static String getFeeType()
    {
        return props.getProperty("fee_type");
    }
    
    public static String getDeviceInfo()
    {
        return props.getProperty("device_info");
    }
    
    public static String getAppId()
    {
        return props.getProperty("appid");
    }
    
    public static String getNotifyUrl()
    {
        return props.getProperty("notify_url");
    }
    
    public static String getTradeType()
    {
        return props.getProperty("trade_type");
    }
    
    public static String getWayUrl()
    {
        return props.getProperty("way_url");
    }
    
    public static String getKeyPath()
    {
        return props.getProperty("keyPath");
    }
}
