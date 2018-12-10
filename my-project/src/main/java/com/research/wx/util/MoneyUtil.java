/*
 * 文 件 名:  MoneyUtil.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:  Administrator
 * 修改时间:  2017年11月28日
 */
package com.research.wx.util;

import java.math.BigDecimal;

/**
 * <一句话功能简述>
 * <功能详细描述>
 * 
 * @author  sun
 * @version  [版本号, 2017年11月28日]
 */
public class MoneyUtil
{
    /**
     * 元转分
     * @param yuan
     * @return
     */
    public static Integer Yuan2Fen(Double yuan)
    {
        return new BigDecimal(yuan).movePointRight(2).intValue();
    }
    
    /**
     * 分转元
     * @param fen
     * @return
     */
    public static Double Fen2Yuan(Integer fen)
    {
        return new BigDecimal(fen).movePointLeft(2).doubleValue();
    }
}
