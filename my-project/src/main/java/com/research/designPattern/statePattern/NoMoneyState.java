/*
 * 文 件 名:  NoMoneyState.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月5日
 */
package com.research.designPattern.statePattern;

/**
 * 没钱的状态
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年7月5日]
 */
public class NoMoneyState implements State
{
    
    private VendingMachine machine;
    
    public NoMoneyState(VendingMachine machine)
    {
        this.machine = machine;
        
    }
    
    @Override
    public void insertMoney()
    {
        System.out.println("投币成功");
        machine.setState(machine.getHasMoneyState());
    }
    
    @Override
    public void backMoney()
    {
        System.out.println("您未投币，想退钱？...");
    }
    
    @Override
    public void turnCrank()
    {
        System.out.println("您未投币，想拿东西么？...");
    }
    
    @Override
    public void dispense()
    {
        throw new IllegalStateException("非法状态！");
    }
    
}
