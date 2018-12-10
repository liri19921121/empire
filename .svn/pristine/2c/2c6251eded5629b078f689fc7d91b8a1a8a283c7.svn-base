/*
 * 文 件 名:  WinnerState.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月5日
 */
package com.research.designPattern.statePattern;

/**
 * 中奖的状态，该状态下不会有任何用户的操作
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年7月5日]
 */
public class WinnerState implements State
{
    
    private VendingMachine machine;
    
    public WinnerState(VendingMachine machine)
    {
        this.machine = machine;
    }
    
    @Override
    public void insertMoney()
    {
        throw new IllegalStateException("非法状态");
    }
    
    @Override
    public void backMoney()
    {
        throw new IllegalStateException("非法状态");
    }
    
    @Override
    public void turnCrank()
    {
        throw new IllegalStateException("非法状态");
    }
    
    @Override
    public void dispense()
    {
        System.out.println("你中奖了，恭喜你，将得到2件商品");
        machine.dispense();
        
        if (machine.getCount() == 0)
        {
            System.out.println("商品已经售罄");
            machine.setState(machine.getSoldOutState());
        }
        else
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
}
