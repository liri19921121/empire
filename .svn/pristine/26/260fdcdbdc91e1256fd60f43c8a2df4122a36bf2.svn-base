/*
 * 文 件 名:  ConnectionUtil.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:  Administrator
 * 修改时间:  2017年11月29日
 */
package com.research.web_spider;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * 爬取网页源码
 * <功能详细描述>
 * 
 * @author  sun
 * @version  [版本号, 2017年11月29日]
 */
public class ConnectionUtil
{
    public static String Connect(String address)
    {
        HttpURLConnection conn = null;
        URL url = null;
        InputStream in = null;
        BufferedReader reader = null;
        StringBuffer stringBuffer = null;
        try
        {
            url = new URL(address);
            conn = (HttpURLConnection)url.openConnection();
            conn.setConnectTimeout(5000);
            conn.setReadTimeout(5000);
            conn.setDoInput(true);
            conn.connect();
            in = conn.getInputStream();
            reader = new BufferedReader(new InputStreamReader(in));
            stringBuffer = new StringBuffer();
            String line = null;
            while ((line = reader.readLine()) != null)
            {
                stringBuffer.append(line);
            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally
        {
            conn.disconnect();
            try
            {
                in.close();
                reader.close();
            }
            catch (Exception e)
            {
                e.printStackTrace();
            }
        }
        
        return stringBuffer.toString();
    }
    
    public static void main(String[] args)
    {
        System.out.println(Connect("https://www.qianyanjr.com"));
    }
}
