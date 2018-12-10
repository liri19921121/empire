/*
 * 文 件 名:  RefundResponse.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:  Administrator
 * 修改时间:  2017年11月28日
 */
package com.research.wx.pojo;

/**
 * 退款返回的参数
 * <功能详细描述>
 * 
 * @author  sun
 * @version  [版本号, 2017年11月28日]
 */
public class RefundResponse
{
    /**
     * 订单号.
     */
    private String orderId;
    
    /**
     * 订单金额.
     */
    private Double orderAmount;
    
    /**
     * 第三方支付流水号.
     */
    private String outTradeNo;
    
    /**
     * 退款号.
     */
    private String refundId;
    
    /**
     * 第三方退款流水号.
     */
    private String outRefundNo;
    
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
    
    /**
     * @return 返回 refundId
     */
    public String getRefundId()
    {
        return refundId;
    }
    
    /**
     * @param 对refundId进行赋值
     */
    public void setRefundId(String refundId)
    {
        this.refundId = refundId;
    }
    
    /**
     * @return 返回 outRefundNo
     */
    public String getOutRefundNo()
    {
        return outRefundNo;
    }
    
    /**
     * @param 对outRefundNo进行赋值
     */
    public void setOutRefundNo(String outRefundNo)
    {
        this.outRefundNo = outRefundNo;
    }
    
}
