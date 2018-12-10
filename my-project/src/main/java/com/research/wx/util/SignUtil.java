/*
 * 文 件 名:  SignUtil.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:  Administrator
 * 修改时间:  2017年11月24日
 */
package com.research.wx.util;

import org.apache.commons.codec.digest.DigestUtils;

import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author  Administrator
 * @version  [版本号, 2017年11月24日]
 */
public class SignUtil
{
    //签名
    public static String sign(Map<String, String> params, String signKey)
    {
        SortedMap<String, String> sortedMap = new TreeMap<String, String>(params);
        
        StringBuilder toSign = new StringBuilder();
        for (String key : sortedMap.keySet())
        {
            String value = params.get(key);
            if (value != null && !"sign".equals(key) && !"key".equals(key))
            {
                toSign.append(key).append("=").append(value).append("&");
            }
        }
        
        toSign.append("key=").append(signKey);
        return DigestUtils.md5Hex(toSign.toString()).toUpperCase();
    }
}
