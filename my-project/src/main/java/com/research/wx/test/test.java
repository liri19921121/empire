package com.research.wx.test;

import com.research.wx.util.SignUtil;
import com.research.wx.util.WeChat_Var;
import com.research.wx.util.XmlUtil;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

public class test
{
    
    public static void main(String[] args)
        throws Exception
    {
        
        // HostnameVerifier hnv = new HostnameVerifier() {
        //     public boolean verify(String hostname, SSLSession session) {
        //         // Always return true，接受任意域名服务器
        //         return true;
        //     }
        // };
        // HttpsURLConnection.setDefaultHostnameVerifier(hnv);
        
        //将请求信息封装成map
        Map<String, String> map = buildMap();
        //将请求信息封装成xml报文
        String reqBody = XmlUtil.mapToXML(map);
        //得到回复报文
        String responseBod = getResponse(reqBody);
        //将回复报文转为map
        Map mapResponseBod = XmlUtil.xmlToMap(responseBod);
        
        System.out.println(mapResponseBod);
        System.out.println(mapResponseBod.get("result_code"));
        
    }
    
    public static String getResponse(String reqBody)
        throws Exception
    {
        URL httpUrl = new URL(WeChat_Var.getWayUrl());
        HttpURLConnection httpURLConnection = (HttpURLConnection)httpUrl.openConnection();
        httpURLConnection.setRequestProperty("Host", "api.mch.weixin.qq.com");
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setConnectTimeout(10 * 1000);
        httpURLConnection.setReadTimeout(10 * 1000);
        httpURLConnection.connect();
        OutputStream outputStream = httpURLConnection.getOutputStream();
        outputStream.write(reqBody.getBytes("UTF-8"));
        
        //获取内容
        InputStream inputStream = httpURLConnection.getInputStream();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        final StringBuffer stringBuffer = new StringBuffer();
        String line = null;
        while ((line = bufferedReader.readLine()) != null)
        {
            stringBuffer.append(line);
        }
        String resp = stringBuffer.toString();
        if (stringBuffer != null)
        {
            try
            {
                bufferedReader.close();
            }
            catch (IOException e)
            {
                e.printStackTrace();
            }
        }
        if (inputStream != null)
        {
            try
            {
                inputStream.close();
            }
            catch (IOException e)
            {
                e.printStackTrace();
            }
        }
        if (outputStream != null)
        {
            try
            {
                outputStream.close();
            }
            catch (IOException e)
            {
                e.printStackTrace();
            }
        }
        
        return resp;
    }
    
    private static Map<String, String> buildMap()
    {
        Map<String, String> map = new HashMap<String, String>();
        //交易类型
        map.put("trade_type", WeChat_Var.getTradeType());
        //商户号
        map.put("mch_id", WeChat_Var.getMchId());
        //签名类型
        map.put("sign_type", WeChat_Var.getSignType());
        //标价币种
        map.put("fee_type", WeChat_Var.getFeeType());
        //设备号
        map.put("device_info", WeChat_Var.getDeviceInfo());
        //公众账号ID
        map.put("appid", WeChat_Var.getAppId());
        //通知地址
        map.put("notify_url", WeChat_Var.getNotifyUrl());
        
        //商品描述
        map.put("body", "测试商家-商品类目");
        //随机字符串
        map.put("nonce_str", "b1089cb0231011e7b7e1484520356fdc");
        //商户订单号
        map.put("out_trade_no", "20161909105959000000111222");
        //标价金额
        map.put("total_fee", "1");
        //终端IP
        map.put("spbill_create_ip", "123.12.12.123");
        String sign = SignUtil.sign(map, WeChat_Var.getSignKey());
        map.put("sign", sign);
        return map;
    }
    
}
