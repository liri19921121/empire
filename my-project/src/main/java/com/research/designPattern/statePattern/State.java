/*
 * 文 件 名:  State.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月5日
 */
package com.research.designPattern.statePattern;

/**
 * 状态的超类
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年7月5日]
 */
public interface State
{
    /**
     * 放钱
     */
    public void insertMoney();
    
    /**
     * 退钱
     */
    public void backMoney();
    
    /**
     * 转动曲柄
     */
    public void turnCrank();
    
    /**
     * 出商品
     */
    public void dispense();
    
}
