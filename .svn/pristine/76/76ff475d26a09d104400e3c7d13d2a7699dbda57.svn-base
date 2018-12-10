/*
 * 文 件 名:  SoldState.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月5日
 */
package com.research.designPattern.statePattern;

/**
 * 准备出商品的状态,该状态下，不会有任何用户的操作
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年7月5日]
 */
public class SoldState implements State
{
    
    private VendingMachine machine;
    
    public SoldState(VendingMachine machine)
    {
        this.machine = machine;
    }
    
    @Override
    public void insertMoney()
    {
        System.out.println("正在出货，请勿投币");
    }
    
    @Override
    public void backMoney()
    {
        System.out.println("正在出货，没有可退的钱");
    }
    
    @Override
    public void turnCrank()
    {
        System.out.println("正在出货，请勿重复转动手柄");
    }
    
    @Override
    public void dispense()
    {
        machine.dispense();
        if (machine.getCount() > 0)
        {
            machine.setState(machine.getNoMoneyState());
        }
        else
        {
            System.out.println("商品已经售罄");
            machine.setState(machine.getSoldOutState());
        }
    }
    
}
