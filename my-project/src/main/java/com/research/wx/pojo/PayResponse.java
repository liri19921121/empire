/*
 * 文 件 名:  PayResponse.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:  Administrator
 * 修改时间:  2017年11月28日
 */
package com.research.wx.pojo;

import java.net.URI;

/**
 * 支付时的同步返回参数
 * <功能详细描述>
 * 
 * @author  sun
 * @version  [版本号, 2017年11月28日]
 * 
 */
public class PayResponse
{
    private String prePayParams;
    
    private URI payUri;
    
    /** 以下字段仅在微信h5支付返回. */
    private String appId;
    
    private String timeStamp;
    
    private String nonceStr;
    
    private String packAge;
    
    private String signType;
    
    private String paySign;
    
    /** 以下字段在微信异步通知下返回. */
    private Double orderAmount;
    
    private String orderId;
    
    //第三方支付的流水号
    private String outTradeNo;
    
    private String msg;
    
    /**
     * @return 返回 msg
     */
    public String getMsg()
    {
        return msg;
    }
    
    /**
     * @param 对msg进行赋值
     */
    public void setMsg(String msg)
    {
        this.msg = msg;
    }
    
    /**
     * @return 返回 prePayParams
     */
    public String getPrePayParams()
    {
        return prePayParams;
    }
    
    /**
     * @param 对prePayParams进行赋值
     */
    public void setPrePayParams(String prePayParams)
    {
        this.prePayParams = prePayParams;
    }
    
    /**
     * @return 返回 payUri
     */
    public URI getPayUri()
    {
        return payUri;
    }
    
    /**
     * @param 对payUri进行赋值
     */
    public void setPayUri(URI payUri)
    {
        this.payUri = payUri;
    }
    
    /**
     * @return 返回 appId
     */
    public String getAppId()
    {
        return appId;
    }
    
    /**
     * @param 对appId进行赋值
     */
    public void setAppId(String appId)
    {
        this.appId = appId;
    }
    
    /**
     * @return 返回 timeStamp
     */
    public String getTimeStamp()
    {
        return timeStamp;
    }
    
    /**
     * @param 对timeStamp进行赋值
     */
    public void setTimeStamp(String timeStamp)
    {
        this.timeStamp = timeStamp;
    }
    
    /**
     * @return 返回 nonceStr
     */
    public String getNonceStr()
    {
        return nonceStr;
    }
    
    /**
     * @param 对nonceStr进行赋值
     */
    public void setNonceStr(String nonceStr)
    {
        this.nonceStr = nonceStr;
    }
    
    /**
     * @return 返回 packAge
     */
    public String getPackAge()
    {
        return packAge;
    }
    
    /**
     * @param 对packAge进行赋值
     */
    public void setPackAge(String packAge)
    {
        this.packAge = packAge;
    }
    
    /**
     * @return 返回 signType
     */
    public String getSignType()
    {
        return signType;
    }
    
    /**
     * @param 对signType进行赋值
     */
    public void setSignType(String signType)
    {
        this.signType = signType;
    }
    
    /**
     * @return 返回 paySign
     */
    public String getPaySign()
    {
        return paySign;
    }
    
    /**
     * @param 对paySign进行赋值
     */
    public void setPaySign(String paySign)
    {
        this.paySign = paySign;
    }
    
    /**
     * @return 返回 orderAmount
     */
    public Double getOrderAmount()
    {
        return orderAmount;
    }
    
    /**
     * @param 对orderAmount进行赋值
     */
    public void setOrderAmount(Double orderAmount)
    {
        this.orderAmount = orderAmount;
    }
    
    /**
     * @return 返回 orderId
     */
    public String getOrderId()
    {
        return orderId;
    }
    
    /**
     * @param 对orderId进行赋值
     */
    public void setOrderId(String orderId)
    {
        this.orderId = orderId;
    }
    
    /**
     * @return 返回 outTradeNo
     */
    public String getOutTradeNo()
    {
        return outTradeNo;
    }
    
    /**
     * @param 对outTradeNo进行赋值
     */
    public void setOutTradeNo(String outTradeNo)
    {
        this.outTradeNo = outTradeNo;
    }
    
}
