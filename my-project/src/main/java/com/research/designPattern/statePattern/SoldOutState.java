/*
 * 文 件 名:  SoldOutState.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月5日
 */
package com.research.designPattern.statePattern;

/**
 * 售馨的状态
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年7月5日]
 */
public class SoldOutState implements State
{
    
    private VendingMachine machine;
    
    public SoldOutState(VendingMachine machine)
    {
        this.machine = machine;
    }
    
    @Override
    public void insertMoney()
    {
        System.out.println("投币失败，商品已售罄");
    }
    
    @Override
    public void backMoney()
    {
        System.out.println("您未投币，想退钱么？...");
    }
    
    @Override
    public void turnCrank()
    {
        System.out.println("商品售罄，转动手柄也木有用");
    }
    
    @Override
    public void dispense()
    {
        throw new IllegalStateException("非法状态！");
    }
    
}
