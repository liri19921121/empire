/*
 * 文 件 名:  HasMoneyState.java
 * 版    权:  深圳市钱眼金融控股有限公司
 * 描    述:  <描述>
 * 修 改 人:   sun
 * 修改时间:  2018年7月5日
 */
package com.research.designPattern.statePattern;

import java.util.Random;

/**
 * 已投入钱的状态
 * <功能详细描述>
 * 
 * @author   sun
 * @version  [版本号, 2018年7月5日]
 */
public class HasMoneyState implements State
{
    
    private VendingMachine machine;
    
    private Random random = new Random();
    
    public HasMoneyState(VendingMachine machine)
    {
        this.machine = machine;
    }
    
    @Override
    public void insertMoney()
    {
        System.out.println("您已经投过币了，无需再投....");
    }
    
    @Override
    public void backMoney()
    {
        System.out.println("退币成功");
        
        machine.setState(machine.getNoMoneyState());
    }
    
    @Override
    public void turnCrank()
    {
        System.out.println("你转动了手柄");
        int winner = random.nextInt(10);
        if (winner == 0 && machine.getCount() > 1)
        {
            machine.setState(machine.getWinnerState());
        }
        else
        {
            machine.setState(machine.getSoldState());
        }
    }
    
    @Override
    public void dispense()
    {
        throw new IllegalStateException("非法状态！");
    }
}
