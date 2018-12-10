/*
 * 文 件 名:  BestPayTypeEnum.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:  Administrator
 * 修改时间:  2017年11月28日
 */
package com.research.wx.pojo;

/**
 * 支付方式
 * <功能详细描述>
 * 
 * @author  sun
 * @version  [版本号, 2017年11月28日]
 */
public enum BestPayTypeEnum
{
    
    ALIPAY_APP("alipay_app", "支付宝app"),
    
    ALIPAY_PC("alipay_pc", "支付宝pc"),
    
    ALIPAY_WAP("alipay_wap", "支付宝wap"),
    
    WXPAY_H5("wxpay_h5", "微信公众账号支付"),;
    
    private String code;
    
    private String name;
    
    BestPayTypeEnum(String code, String name)
    {
        this.code = code;
        this.name = name;
    }
    
    public String getCode()
    {
        return code;
    }
    
    public String getName()
    {
        return name;
    }
    
    public static BestPayTypeEnum getByCode(String code)
    {
        for (BestPayTypeEnum bestPayTypeEnum : BestPayTypeEnum.values())
        {
            if (bestPayTypeEnum.getCode().equals(code))
            {
                return bestPayTypeEnum;
            }
        }
        return null;
    }
}
