package com.research.wx.service;

import com.research.wx.pojo.PayResponse;
import com.research.wx.util.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

@Service
public class WxService
{
    private static final Logger log = LoggerFactory.getLogger(WxService.class);
    
    public Map<String, String> buildMap()
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
        map.put("nonce_str", RandomUtil.getRandomStr());
        //商户订单号20161909105959000000111108
        map.put("out_trade_no", "20161909105959000000111235");
        //标价金额
        map.put("total_fee", "1");
        //终端IP
        map.put("spbill_create_ip", "123.12.12.123");
        String sign = SignUtil.sign(map, WeChat_Var.getSignKey());
        map.put("sign", sign);
        return map;
    }
    
    public String getResponse(String reqBody)
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
    
    public Map<String, String> getPay(Map reqMap)
    {
        Map<String, String> respMap = new HashMap<String, String>();
        respMap.put("appid", reqMap.get("appid").toString());
        //时间戳,标准北京时间，时区为东八区，自1970年1月1日 0点0分0秒以来的秒数。注意：部分系统取到的值为毫秒级，需要转换成秒(10位数字)。
        String timeStamp = String.valueOf(System.currentTimeMillis() / 1000);
        respMap.put("timeStamp", timeStamp);
        //随机字符串
        String nonceStr = RandomUtil.getRandomStr();
        respMap.put("nonce_str", nonceStr);
        //订单详情扩展字符串,统一下单接口返回的prepay_id参数值，提交格式如：prepay_id=***
        respMap.put("packAge", "prepay_id=" + reqMap.get("prepay_id").toString());
        respMap.put("signType", WeChat_Var.getSignType());
        //签名
        String sign = SignUtil.sign(respMap, WeChat_Var.getSignKey());
        respMap.put("sign", sign);
        return respMap;
    }
    
    public PayResponse notify(String notifyData)
    {
        PayResponse payResponse = new PayResponse();
        /*  异步通知注意：
        1. 验证签名
        2. 支付的状态
        3. 支付金额
        4. 支付人(下单人 是否要== 支付人)根据业务需求来*/
        
        //将异步通知报文封装成map
        Map notifyDataMap = XmlUtil.xmlToMap(notifyData);
        //对异步接收的报文校验
        payResponse = asyncNotify(notifyDataMap);
        
        /* 
         * 对订单进行一些业务处理
         //查询订单
         OrderDTO orderDTO = orderService.findOne(payResponse.getOrderId());
        
        //判断订单是否存在
        if (orderDTO == null)
        {
            log.error("【微信支付】异步通知, 订单不存在, orderId={}", payResponse.getOrderId());
            return "";
        }
        
        //判断金额是否一致(0.10   0.1)
        if (!MathUtil.equals(payResponse.getOrderAmount(), orderDTO.getOrderAmount().doubleValue()))
        {
            log.error("【微信支付】异步通知, 订单金额不一致, orderId={}, 微信通知金额={}, 系统金额={}",
                payResponse.getOrderId(),
                payResponse.getOrderAmount(),
                orderDTO.getOrderAmount());
            return "";
        }
        //修改订单的支付状态
        orderDTO.setOrderStatus(2);
        */
        return payResponse;
    }
    
    public PayResponse asyncNotify(Map notifyDataMap)
    {
        //签名校验
        if (!verify(notifyDataMap))
        {
            log.error("【微信支付异步通知】签名验证失败, response={}", notifyDataMap);
            PayResponse payResponse = new PayResponse();
            payResponse.setMsg("signError");
            return payResponse;
        }
        
        if (!notifyDataMap.get("result_code").equals("SUCCESS"))
        {
            log.error("【微信支付异步通知】发起支付, returnCode != SUCCESS, returnMsg = " + notifyDataMap.get("return_msg"));
            PayResponse payResponse = new PayResponse();
            payResponse.setMsg("result_codeError");
            return payResponse;
        }
        
        /*//该订单已支付直接返回
        if (!notifyDataMap.get("result_code").equals("SUCCESS") && !notifyDataMap.get("err_code").equals("ORDERPAID"))
        {}*/
        PayResponse payResponse = new PayResponse();
        payResponse.setOrderAmount(MoneyUtil.Fen2Yuan(Integer.parseInt(notifyDataMap.get("total_fee").toString())));
        payResponse.setOrderId(notifyDataMap.get("out_trade_no").toString());
        payResponse.setOutTradeNo(notifyDataMap.get("transaction_id").toString());
        payResponse.setMsg("SUCCESS");
        return payResponse;
    }
    
    private boolean verify(Map notifyDataMap)
    {
        String sign = SignUtil.sign(notifyDataMap, WeChat_Var.getSignKey());
        return sign.equals(notifyDataMap.get("sign"));
    }
    
}
